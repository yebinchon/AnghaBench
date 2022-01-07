
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;


 int newnfs_nmcancelreqs (struct nfsmount*) ;

void
nfsrv_killrpcs(struct nfsmount *nmp)
{
 newnfs_nmcancelreqs(nmp);
}
