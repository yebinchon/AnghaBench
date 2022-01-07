
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct socket {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 int ENOENT ;
 struct mac_mls* SLOT (struct label*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_socket_check_visible(struct ucred *cred, struct socket *so,
    struct label *solabel)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(solabel);

 SOCK_LOCK(so);
 if (!mls_dominate_effective(subj, obj)) {
  SOCK_UNLOCK(so);
  return (ENOENT);
 }
 SOCK_UNLOCK(so);

 return (0);
}
