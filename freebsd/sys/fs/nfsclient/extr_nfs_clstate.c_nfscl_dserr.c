
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nfsclrecalllayout {int dummy; } ;
struct TYPE_2__ {int seqid; } ;
struct nfscllayout {int nfsly_flags; TYPE_1__ nfsly_stateid; int nfsly_flayrw; int nfsly_flayread; } ;
struct nfsclds {int dummy; } ;
struct nfscldevinfo {int nfsdi_deviceid; } ;


 int LIST_EMPTY (int *) ;
 int M_NFSLAYRECALL ;
 int M_WAITOK ;
 int NFSCL_DEBUG (int,char*,int) ;
 int NFSLAYOUTIOMODE_READ ;
 int NFSLAYOUTIOMODE_RW ;
 int NFSLAYOUTRETURN_FILE ;
 int NFSLOCKCLSTATE () ;
 int NFSLY_RECALL ;
 int NFSUNLOCKCLSTATE () ;
 int UINT64_MAX ;
 int free (struct nfsclrecalllayout*,int ) ;
 struct nfsclrecalllayout* malloc (int,int ,int ) ;
 int nfscl_cancelreqs (struct nfsclds*) ;
 int nfscl_layoutrecall (int ,struct nfscllayout*,int,int ,int ,int ,int,int,int ,struct nfsclrecalllayout*) ;
 int printf (char*,int) ;

void
nfscl_dserr(uint32_t op, uint32_t stat, struct nfscldevinfo *dp,
    struct nfscllayout *lyp, struct nfsclds *dsp)
{
 struct nfsclrecalllayout *recallp;
 uint32_t iomode;

 printf("DS being disabled, error=%d\n", stat);

 recallp = malloc(sizeof(*recallp), M_NFSLAYRECALL, M_WAITOK);
 iomode = 0;
 NFSLOCKCLSTATE();
 if ((lyp->nfsly_flags & NFSLY_RECALL) == 0) {
  if (!LIST_EMPTY(&lyp->nfsly_flayread))
   iomode |= NFSLAYOUTIOMODE_READ;
  if (!LIST_EMPTY(&lyp->nfsly_flayrw))
   iomode |= NFSLAYOUTIOMODE_RW;
  (void)nfscl_layoutrecall(NFSLAYOUTRETURN_FILE, lyp, iomode,
      0, UINT64_MAX, lyp->nfsly_stateid.seqid, stat, op,
      dp->nfsdi_deviceid, recallp);
  NFSUNLOCKCLSTATE();
  NFSCL_DEBUG(4, "nfscl_dserr recall iomode=%d\n", iomode);
 } else {
  NFSUNLOCKCLSTATE();
  free(recallp, M_NFSLAYRECALL);
 }


 nfscl_cancelreqs(dsp);
}
