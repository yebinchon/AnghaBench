
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; TYPE_1__ bo_clean; int * bo_object; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_SYNC (struct bufobj*,int ) ;
 int BO_UNLOCK (struct bufobj*) ;
 int EAGAIN ;
 int MNT_WAIT ;
 int OBJPR_CLEANONLY ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int V_ALLOWCLEAN ;
 int V_ALT ;
 int V_CLEANONLY ;
 int V_NORMAL ;
 int V_SAVE ;
 int V_VMIO ;
 int bufobj_wwait (struct bufobj*,int,int) ;
 int flushbuflist (TYPE_1__*,int,struct bufobj*,int,int) ;
 int panic (char*) ;
 int vm_object_page_remove (int *,int ,int ,int ) ;
 int vm_object_pip_wait_unlocked (int *,char*) ;

int
bufobj_invalbuf(struct bufobj *bo, int flags, int slpflag, int slptimeo)
{
 int error;

 BO_LOCK(bo);
 if (flags & V_SAVE) {
  error = bufobj_wwait(bo, slpflag, slptimeo);
  if (error) {
   BO_UNLOCK(bo);
   return (error);
  }
  if (bo->bo_dirty.bv_cnt > 0) {
   BO_UNLOCK(bo);
   if ((error = BO_SYNC(bo, MNT_WAIT)) != 0)
    return (error);




   BO_LOCK(bo);
   if (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)
    panic("vinvalbuf: dirty bufs");
  }
 }





 do {
  error = flushbuflist(&bo->bo_clean,
      flags, bo, slpflag, slptimeo);
  if (error == 0 && !(flags & V_CLEANONLY))
   error = flushbuflist(&bo->bo_dirty,
       flags, bo, slpflag, slptimeo);
  if (error != 0 && error != EAGAIN) {
   BO_UNLOCK(bo);
   return (error);
  }
 } while (error != 0);






 do {
  bufobj_wwait(bo, 0, 0);
  if ((flags & V_VMIO) == 0 && bo->bo_object != ((void*)0)) {
   BO_UNLOCK(bo);
   vm_object_pip_wait_unlocked(bo->bo_object, "bovlbx");
   BO_LOCK(bo);
  }
 } while (bo->bo_numoutput > 0);
 BO_UNLOCK(bo);




 if (bo->bo_object != ((void*)0) &&
     (flags & (V_ALT | V_NORMAL | V_CLEANONLY | V_VMIO)) == 0) {
  VM_OBJECT_WLOCK(bo->bo_object);
  vm_object_page_remove(bo->bo_object, 0, 0, (flags & V_SAVE) ?
      OBJPR_CLEANONLY : 0);
  VM_OBJECT_WUNLOCK(bo->bo_object);
 }
 return (0);
}
