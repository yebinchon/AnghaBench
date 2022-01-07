
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __acl_delete_file_args {int type; int path; } ;


 int FOLLOW ;
 int kern___acl_delete_path (struct thread*,int ,int ,int ) ;

int
sys___acl_delete_file(struct thread *td, struct __acl_delete_file_args *uap)
{

 return (kern___acl_delete_path(td, uap->path, uap->type, FOLLOW));
}
