
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int sa_len; } ;
struct file {struct socket* f_data; } ;
typedef scalar_t__ socklen_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;


 int AUDIT_ARG_FD (int) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int M_SONAME ;
 int cap_getsockname_rights ;
 int fdrop (struct file*,struct thread*) ;
 int free (struct sockaddr*,int ) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int ktrsockaddr (struct sockaddr*) ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
kern_getsockname(struct thread *td, int fd, struct sockaddr **sa,
    socklen_t *alen)
{
 struct socket *so;
 struct file *fp;
 socklen_t len;
 int error;

 AUDIT_ARG_FD(fd);
 error = getsock_cap(td, fd, &cap_getsockname_rights,
     &fp, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);
 so = fp->f_data;
 *sa = ((void*)0);
 CURVNET_SET(so->so_vnet);
 error = (*so->so_proto->pr_usrreqs->pru_sockaddr)(so, sa);
 CURVNET_RESTORE();
 if (error != 0)
  goto bad;
 if (*sa == ((void*)0))
  len = 0;
 else
  len = MIN(*alen, (*sa)->sa_len);
 *alen = len;




bad:
 fdrop(fp, td);
 if (error != 0 && *sa != ((void*)0)) {
  free(*sa, M_SONAME);
  *sa = ((void*)0);
 }
 return (error);
}
