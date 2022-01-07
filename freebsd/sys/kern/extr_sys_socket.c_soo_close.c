
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; int * f_ops; } ;


 int badfileops ;
 int soclose (struct socket*) ;

__attribute__((used)) static int
soo_close(struct file *fp, struct thread *td)
{
 int error = 0;
 struct socket *so;

 so = fp->f_data;
 fp->f_ops = &badfileops;
 fp->f_data = ((void*)0);

 if (so)
  error = soclose(so);
 return (error);
}
