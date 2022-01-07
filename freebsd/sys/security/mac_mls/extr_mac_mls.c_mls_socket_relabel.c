
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int mls_copy (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_socket_relabel(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
 struct mac_mls *source, *dest;

 SOCK_LOCK_ASSERT(so);

 source = SLOT(newlabel);
 dest = SLOT(solabel);

 mls_copy(source, dest);
}
