
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfscldevinfo {scalar_t__ nfsdi_refcnt; } ;


 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
nfscl_reldevinfo_locked(struct nfscldevinfo *dip)
{

 dip->nfsdi_refcnt--;
 if (dip->nfsdi_refcnt == 0)
  wakeup(&dip->nfsdi_refcnt);
}
