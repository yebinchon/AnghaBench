
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int biba_copy (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_socket_relabel(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
 struct mac_biba *source, *dest;

 SOCK_LOCK_ASSERT(so);

 source = SLOT(newlabel);
 dest = SLOT(solabel);

 biba_copy(source, dest);
}
