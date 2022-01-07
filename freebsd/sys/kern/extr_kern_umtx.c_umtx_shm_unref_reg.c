
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_object_t ;
struct umtx_shm_reg {TYPE_1__* ushm_obj; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_2__* shm_object; } ;


 int OBJ_UMTXDEAD ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int umtx_shm_free_reg (struct umtx_shm_reg*) ;
 int umtx_shm_lock ;
 int umtx_shm_unref_reg_locked (struct umtx_shm_reg*,int) ;

__attribute__((used)) static void
umtx_shm_unref_reg(struct umtx_shm_reg *reg, bool force)
{
 vm_object_t object;
 bool dofree;

 if (force) {
  object = reg->ushm_obj->shm_object;
  VM_OBJECT_WLOCK(object);
  object->flags |= OBJ_UMTXDEAD;
  VM_OBJECT_WUNLOCK(object);
 }
 mtx_lock(&umtx_shm_lock);
 dofree = umtx_shm_unref_reg_locked(reg, force);
 mtx_unlock(&umtx_shm_lock);
 if (dofree)
  umtx_shm_free_reg(reg);
}
