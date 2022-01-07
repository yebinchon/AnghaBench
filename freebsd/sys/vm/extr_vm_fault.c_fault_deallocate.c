
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faultstate {scalar_t__ object; scalar_t__ first_object; int * first_m; } ;


 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 int unlock_map (struct faultstate*) ;
 int unlock_vp (struct faultstate*) ;
 int vm_object_deallocate (scalar_t__) ;
 int vm_object_pip_wakeup (scalar_t__) ;
 int vm_page_free (int *) ;

__attribute__((used)) static void
fault_deallocate(struct faultstate *fs)
{

 vm_object_pip_wakeup(fs->object);
 if (fs->object != fs->first_object) {
  VM_OBJECT_WLOCK(fs->first_object);
  vm_page_free(fs->first_m);
  vm_object_pip_wakeup(fs->first_object);
  VM_OBJECT_WUNLOCK(fs->first_object);
  fs->first_m = ((void*)0);
 }
 vm_object_deallocate(fs->first_object);
 unlock_map(fs);
 unlock_vp(fs);
}
