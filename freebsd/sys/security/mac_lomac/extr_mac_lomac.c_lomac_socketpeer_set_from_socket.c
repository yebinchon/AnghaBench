
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_socketpeer_set_from_socket(struct socket *oldso,
    struct label *oldsolabel, struct socket *newso,
    struct label *newsopeerlabel)
{
 struct mac_lomac source, *dest;

 SOCK_LOCK(oldso);
 source = *SLOT(oldsolabel);
 SOCK_UNLOCK(oldso);

 dest = SLOT(newsopeerlabel);

 SOCK_LOCK(newso);
 lomac_copy_single(&source, dest);
 SOCK_UNLOCK(newso);
}
