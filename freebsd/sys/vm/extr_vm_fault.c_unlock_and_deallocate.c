
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faultstate {int object; } ;


 int VM_OBJECT_WUNLOCK (int ) ;
 int fault_deallocate (struct faultstate*) ;

__attribute__((used)) static void
unlock_and_deallocate(struct faultstate *fs)
{

 VM_OBJECT_WUNLOCK(fs->object);
 fault_deallocate(fs);
}
