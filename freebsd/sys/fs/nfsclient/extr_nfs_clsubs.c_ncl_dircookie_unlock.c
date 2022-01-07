
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsnode {int n_flag; } ;


 int NDIRCOOKIELK ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int wakeup (int *) ;

void
ncl_dircookie_unlock(struct nfsnode *np)
{
 NFSLOCKNODE(np);
 np->n_flag &= ~NDIRCOOKIELK;
 wakeup(&np->n_flag);
 NFSUNLOCKNODE(np);
}
