
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct socket {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int ENOENT ;
 struct mac_lomac* SLOT (struct label*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;

__attribute__((used)) static int
lomac_socket_check_visible(struct ucred *cred, struct socket *so,
    struct label *solabel)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(solabel);

 SOCK_LOCK(so);
 if (!lomac_dominate_single(obj, subj)) {
  SOCK_UNLOCK(so);
  return (ENOENT);
 }
 SOCK_UNLOCK(so);

 return (0);
}
