
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nfscldevinfo {int nfsdi_refcnt; } ;
struct nfsclclient {int dummy; } ;


 int NFSLOCKCLSTATE () ;
 int NFSUNLOCKCLSTATE () ;
 struct nfscldevinfo* nfscl_finddevinfo (struct nfsclclient*,int *) ;

struct nfscldevinfo *
nfscl_getdevinfo(struct nfsclclient *clp, uint8_t *deviceid,
    struct nfscldevinfo *dip)
{

 NFSLOCKCLSTATE();
 if (dip == ((void*)0))
  dip = nfscl_finddevinfo(clp, deviceid);
 if (dip != ((void*)0))
  dip->nfsdi_refcnt++;
 NFSUNLOCKCLSTATE();
 return (dip);
}
