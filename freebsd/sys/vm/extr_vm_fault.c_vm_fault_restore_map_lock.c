
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct faultstate {int lookup_still_valid; TYPE_1__* first_object; int map; } ;
struct TYPE_4__ {int paging_in_progress; } ;


 int MPASS (int) ;
 scalar_t__ REFCOUNT_COUNT (int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int vm_map_lock_read (int ) ;
 int vm_map_trylock_read (int ) ;

__attribute__((used)) static void
vm_fault_restore_map_lock(struct faultstate *fs)
{

 VM_OBJECT_ASSERT_WLOCKED(fs->first_object);
 MPASS(REFCOUNT_COUNT(fs->first_object->paging_in_progress) > 0);

 if (!vm_map_trylock_read(fs->map)) {
  VM_OBJECT_WUNLOCK(fs->first_object);
  vm_map_lock_read(fs->map);
  VM_OBJECT_WLOCK(fs->first_object);
 }
 fs->lookup_still_valid = 1;
}
