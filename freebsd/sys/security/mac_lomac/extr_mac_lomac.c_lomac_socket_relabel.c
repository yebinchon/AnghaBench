
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int try_relabel (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_socket_relabel(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
 struct mac_lomac *source, *dest;

 SOCK_LOCK_ASSERT(so);

 source = SLOT(newlabel);
 dest = SLOT(solabel);

 try_relabel(source, dest);
}
