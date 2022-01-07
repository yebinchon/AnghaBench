
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int qval; } ;
struct nfsrv_descript {TYPE_2__ nd_clientid; } ;
struct TYPE_3__ {int qval; } ;
struct nfslayout {scalar_t__ lay_layoutlen; scalar_t__ lay_xdr; int lay_fsid; TYPE_1__ lay_clientid; int lay_fh; int lay_flags; int lay_type; } ;
typedef int fsid_t ;
typedef char fhandle_t ;


 int M_NFSDSTATE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSBCOPY (char*,int *,int) ;
 int NFSFLAYUTIL_STRIPE_MASK ;
 int NFSLAYOUTIOMODE_RW ;
 int NFSLAYOUT_NFSV4_1_FILES ;
 int NFSLAY_READ ;
 int NFSLAY_RW ;
 int NFSX_UNSIGNED ;
 int NFSX_V4DEVICEID ;
 scalar_t__ NFSX_V4FILELAYOUT ;
 int NFSX_V4PNFSFH ;
 struct nfslayout* malloc (scalar_t__,int ,int) ;
 int txdr_hyper (scalar_t__,int *) ;
 void* txdr_unsigned (int) ;

__attribute__((used)) static struct nfslayout *
nfsrv_filelayout(struct nfsrv_descript *nd, int iomode, fhandle_t *fhp,
    fhandle_t *dsfhp, char *devid, fsid_t fs)
{
 uint32_t *tl;
 struct nfslayout *lyp;
 uint64_t pattern_offset;

 lyp = malloc(sizeof(struct nfslayout) + NFSX_V4FILELAYOUT, M_NFSDSTATE,
     M_WAITOK | M_ZERO);
 lyp->lay_type = NFSLAYOUT_NFSV4_1_FILES;
 if (iomode == NFSLAYOUTIOMODE_RW)
  lyp->lay_flags = NFSLAY_RW;
 else
  lyp->lay_flags = NFSLAY_READ;
 NFSBCOPY(fhp, &lyp->lay_fh, sizeof(*fhp));
 lyp->lay_clientid.qval = nd->nd_clientid.qval;
 lyp->lay_fsid = fs;


 tl = (uint32_t *)lyp->lay_xdr;
 NFSBCOPY(devid, tl, NFSX_V4DEVICEID);
 tl += (NFSX_V4DEVICEID / NFSX_UNSIGNED);
 *tl++ = txdr_unsigned(NFSFLAYUTIL_STRIPE_MASK & ~0xffff);
 *tl++ = 0;
 pattern_offset = 0;
 txdr_hyper(pattern_offset, tl); tl += 2;
 *tl++ = txdr_unsigned(1);
 *tl++ = txdr_unsigned(NFSX_V4PNFSFH);
 NFSBCOPY(dsfhp, tl, sizeof(*dsfhp));
 lyp->lay_layoutlen = NFSX_V4FILELAYOUT;
 return (lyp);
}
