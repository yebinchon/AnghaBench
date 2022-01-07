
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct extattr_get_link_args {int nbytes; int data; int attrname; int attrnamespace; int path; } ;


 int NOFOLLOW ;
 int kern_extattr_get_path (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_extattr_get_link(struct thread *td, struct extattr_get_link_args *uap)
{
 return (kern_extattr_get_path(td, uap->path, uap->attrnamespace,
     uap->attrname, uap->data, uap->nbytes, NOFOLLOW));
}
