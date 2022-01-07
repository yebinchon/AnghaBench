
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_socketpeer_set_from_socket(struct socket *oldso,
    struct label *oldsolabel, struct socket *newso,
    struct label *newsopeerlabel)
{
 struct mac_mls source, *dest;

 SOCK_LOCK(oldso);
 source = *SLOT(oldsolabel);
 SOCK_UNLOCK(oldso);

 dest = SLOT(newsopeerlabel);

 SOCK_LOCK(newso);
 mls_copy_effective(&source, dest);
 SOCK_UNLOCK(newso);
}
