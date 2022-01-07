
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfscldevinfo {int dummy; } ;


 int NFSLOCKCLSTATE () ;
 int NFSUNLOCKCLSTATE () ;
 int nfscl_reldevinfo_locked (struct nfscldevinfo*) ;

void
nfscl_reldevinfo(struct nfscldevinfo *dip)
{

 NFSLOCKCLSTATE();
 nfscl_reldevinfo_locked(dip);
 NFSUNLOCKCLSTATE();
}
