
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_type; } ;
struct icl_conn {struct socket* ic_socket; } ;
struct file {scalar_t__ f_type; struct socket* f_data; int * f_ops; } ;
typedef int cap_rights_t ;


 int CAP_SOCK_CLIENT ;
 scalar_t__ DTYPE_SOCKET ;
 int EBUSY ;
 int EINVAL ;
 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_LOCK_ASSERT_NOT (struct icl_conn*) ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int ICL_WARN (char*) ;
 scalar_t__ SOCK_STREAM ;
 int badfileops ;
 int cap_rights_init (int *,int ) ;
 int curthread ;
 int fdrop (struct file*,int ) ;
 int fget (int ,int,int ,struct file**) ;
 int icl_conn_start (struct icl_conn*) ;

int
icl_soft_conn_handoff(struct icl_conn *ic, int fd)
{
 struct file *fp;
 struct socket *so;
 cap_rights_t rights;
 int error;

 ICL_CONN_LOCK_ASSERT_NOT(ic);
 error = fget(curthread, fd,
     cap_rights_init(&rights, CAP_SOCK_CLIENT), &fp);
 if (error != 0)
  return (error);
 if (fp->f_type != DTYPE_SOCKET) {
  fdrop(fp, curthread);
  return (EINVAL);
 }
 so = fp->f_data;
 if (so->so_type != SOCK_STREAM) {
  fdrop(fp, curthread);
  return (EINVAL);
 }

 ICL_CONN_LOCK(ic);

 if (ic->ic_socket != ((void*)0)) {
  ICL_CONN_UNLOCK(ic);
  fdrop(fp, curthread);
  return (EBUSY);
 }

 ic->ic_socket = fp->f_data;
 fp->f_ops = &badfileops;
 fp->f_data = ((void*)0);
 fdrop(fp, curthread);
 ICL_CONN_UNLOCK(ic);

 error = icl_conn_start(ic);

 return (error);
}
