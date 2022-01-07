
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct file {int f_cred; struct socket* f_data; } ;


 int mac_socket_check_poll (struct ucred*,struct socket*) ;
 int sopoll (struct socket*,int,int ,struct thread*) ;

__attribute__((used)) static int
soo_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct socket *so = fp->f_data;







 return (sopoll(so, events, fp->f_cred, td));
}
