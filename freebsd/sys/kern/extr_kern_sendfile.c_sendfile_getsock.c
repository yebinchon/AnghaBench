
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; } ;
struct file {struct socket* f_data; } ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOLISTENING (struct socket*) ;
 int cap_send_rights ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;

__attribute__((used)) static int
sendfile_getsock(struct thread *td, int s, struct file **sock_fp,
    struct socket **so)
{
 int error;

 *sock_fp = ((void*)0);
 *so = ((void*)0);




 error = getsock_cap(td, s, &cap_send_rights,
     sock_fp, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);
 *so = (*sock_fp)->f_data;
 if ((*so)->so_type != SOCK_STREAM)
  return (EINVAL);
 if (SOLISTENING(*so))
  return (ENOTCONN);
 return (0);
}
