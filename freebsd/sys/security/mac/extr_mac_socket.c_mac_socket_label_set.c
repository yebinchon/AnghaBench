
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct label {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosetlabel ) (struct socket*) ;} ;


 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int mac_socket_check_relabel (struct ucred*,struct socket*,struct label*) ;
 int mac_socket_relabel (struct ucred*,struct socket*,struct label*) ;
 int stub1 (struct socket*) ;

int
mac_socket_label_set(struct ucred *cred, struct socket *so,
    struct label *label)
{
 int error;
 SOCK_LOCK(so);
 error = mac_socket_check_relabel(cred, so, label);
 if (error) {
  SOCK_UNLOCK(so);
  return (error);
 }

 mac_socket_relabel(cred, so, label);
 SOCK_UNLOCK(so);







 if (so->so_proto->pr_usrreqs->pru_sosetlabel != ((void*)0))
  (so->so_proto->pr_usrreqs->pru_sosetlabel)(so);

 return (0);
}
