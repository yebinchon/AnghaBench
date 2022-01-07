
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uio {TYPE_1__* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int so_options; } ;
struct file {struct socket* f_data; } ;
struct TYPE_3__ {int td_proc; } ;


 int EPIPE ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIGPIPE ;
 int SO_NOSIGPIPE ;
 int mac_socket_check_send (struct ucred*,struct socket*) ;
 int sosend (struct socket*,int ,struct uio*,int ,int ,int ,TYPE_1__*) ;
 int tdsignal (TYPE_1__*,int ) ;

__attribute__((used)) static int
soo_write(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct socket *so = fp->f_data;
 int error;






 error = sosend(so, 0, uio, 0, 0, 0, uio->uio_td);
 if (error == EPIPE && (so->so_options & SO_NOSIGPIPE) == 0) {
  PROC_LOCK(uio->uio_td->td_proc);
  tdsignal(uio->uio_td, SIGPIPE);
  PROC_UNLOCK(uio->uio_td->td_proc);
 }
 return (error);
}
