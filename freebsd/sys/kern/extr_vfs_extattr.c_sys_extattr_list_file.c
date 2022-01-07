
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct extattr_list_file_args {int nbytes; int data; int attrnamespace; int path; } ;


 int FOLLOW ;
 int kern_extattr_list_path (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_extattr_list_file(struct thread *td, struct extattr_list_file_args *uap)
{

 return (kern_extattr_list_path(td, uap->path, uap->attrnamespace,
     uap->data, uap->nbytes, FOLLOW));
}
