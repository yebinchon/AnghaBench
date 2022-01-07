
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int so_state; TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int sa_len; } ;
struct file {struct socket* f_data; } ;
typedef scalar_t__ socklen_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;} ;


 int AUDIT_ARG_FD (int) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int ENOTCONN ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int M_SONAME ;
 int SS_ISCONFIRMING ;
 int SS_ISCONNECTED ;
 int cap_getpeername_rights ;
 int fdrop (struct file*,struct thread*) ;
 int free (struct sockaddr*,int ) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int ktrsockaddr (struct sockaddr*) ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
kern_getpeername(struct thread *td, int fd, struct sockaddr **sa,
    socklen_t *alen)
{
 struct socket *so;
 struct file *fp;
 socklen_t len;
 int error;

 AUDIT_ARG_FD(fd);
 error = getsock_cap(td, fd, &cap_getpeername_rights,
     &fp, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);
 so = fp->f_data;
 if ((so->so_state & (SS_ISCONNECTED|SS_ISCONFIRMING)) == 0) {
  error = ENOTCONN;
  goto done;
 }
 *sa = ((void*)0);
 CURVNET_SET(so->so_vnet);
 error = (*so->so_proto->pr_usrreqs->pru_peeraddr)(so, sa);
 CURVNET_RESTORE();
 if (error != 0)
  goto bad;
 if (*sa == ((void*)0))
  len = 0;
 else
  len = MIN(*alen, (*sa)->sa_len);
 *alen = len;




bad:
 if (error != 0 && *sa != ((void*)0)) {
  free(*sa, M_SONAME);
  *sa = ((void*)0);
 }
done:
 fdrop(fp, td);
 return (error);
}
