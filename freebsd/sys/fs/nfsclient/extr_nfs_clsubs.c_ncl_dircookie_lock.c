
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsnode {int n_flag; int n_mtx; } ;


 int NDIRCOOKIELK ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int PZERO ;
 int msleep (int*,int *,int ,char*,int ) ;

void
ncl_dircookie_lock(struct nfsnode *np)
{
 NFSLOCKNODE(np);
 while (np->n_flag & NDIRCOOKIELK)
  (void) msleep(&np->n_flag, &np->n_mtx, PZERO, "nfsdirlk", 0);
 np->n_flag |= NDIRCOOKIELK;
 NFSUNLOCKNODE(np);
}
