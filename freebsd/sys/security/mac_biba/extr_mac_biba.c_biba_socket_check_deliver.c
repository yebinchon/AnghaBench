
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int biba_enabled ;
 scalar_t__ biba_equal_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static int
biba_socket_check_deliver(struct socket *so, struct label *solabel,
    struct mbuf *m, struct label *mlabel)
{
 struct mac_biba *p, *s;
 int error;

 if (!biba_enabled)
  return (0);

 p = SLOT(mlabel);
 s = SLOT(solabel);

 SOCK_LOCK(so);
 error = biba_equal_effective(p, s) ? 0 : EACCES;
 SOCK_UNLOCK(so);
 return (error);
}
