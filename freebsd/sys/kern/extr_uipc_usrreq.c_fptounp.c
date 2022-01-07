
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {int dummy; } ;
struct socket {TYPE_1__* so_proto; } ;
struct file {scalar_t__ f_type; struct socket* f_data; } ;
struct TYPE_2__ {int * pr_domain; } ;


 scalar_t__ DTYPE_SOCKET ;
 int localdomain ;
 struct unpcb* sotounpcb (struct socket*) ;

__attribute__((used)) static struct unpcb *
fptounp(struct file *fp)
{
 struct socket *so;

 if (fp->f_type != DTYPE_SOCKET)
  return (((void*)0));
 if ((so = fp->f_data) == ((void*)0))
  return (((void*)0));
 if (so->so_proto->pr_domain != &localdomain)
  return (((void*)0));
 return sotounpcb(so);
}
