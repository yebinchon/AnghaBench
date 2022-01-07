
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct kqueue {int kq_sigio; int kq_state; } ;
struct file {struct kqueue* f_data; } ;


 int ENOTTY ;



 int KQ_ASYNC ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;

__attribute__((used)) static int
kqueue_ioctl(struct file *fp, u_long cmd, void *data,
 struct ucred *active_cred, struct thread *td)
{
 return (ENOTTY);
}
