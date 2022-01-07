
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem_init_args {int value; int idp; } ;


 int S_IRWXG ;
 int S_IRWXU ;
 int ksem_create (struct thread*,int *,int ,int,int ,int ,int ) ;

int
sys_ksem_init(struct thread *td, struct ksem_init_args *uap)
{

 return (ksem_create(td, ((void*)0), uap->idp, S_IRWXU | S_IRWXG, uap->value,
     0, 0));
}
