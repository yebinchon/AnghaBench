
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;
struct mount {int dummy; } ;


 struct nfsmount* VFSTONFS (struct mount*) ;
 int newnfs_nmcancelreqs (struct nfsmount*) ;

__attribute__((used)) static void
nfs_purge(struct mount *mp)
{
 struct nfsmount *nmp = VFSTONFS(mp);

 newnfs_nmcancelreqs(nmp);
}
