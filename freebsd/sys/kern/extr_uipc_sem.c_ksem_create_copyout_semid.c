
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int semid_t ;
typedef int semid32 ;
typedef int semid ;
typedef int int32_t ;


 int copyout (void*,int*,size_t) ;

__attribute__((used)) static int
ksem_create_copyout_semid(struct thread *td, semid_t *semidp, int fd,
    int compat32)
{
 semid_t semid;



 void *ptr;
 size_t ptrs;
  semid = fd;
  ptr = &semid;
  ptrs = sizeof(semid);
  compat32 = 0;




 return (copyout(ptr, semidp, ptrs));
}
