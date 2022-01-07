
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;


 int FWRITE ;
 int _fget (struct thread*,int,struct file**,int ,int *,int *) ;

int
fget_write(struct thread *td, int fd, cap_rights_t *rightsp, struct file **fpp)
{

 return (_fget(td, fd, fpp, FWRITE, rightsp, ((void*)0)));
}
