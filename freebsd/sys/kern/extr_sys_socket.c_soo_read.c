
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;


 int mac_socket_check_receive (struct ucred*,struct socket*) ;
 int soreceive (struct socket*,int ,struct uio*,int ,int ,int ) ;

__attribute__((used)) static int
soo_read(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct socket *so = fp->f_data;
 int error;






 error = soreceive(so, 0, uio, 0, 0, 0);
 return (error);
}
