
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;
struct TYPE_4__ {int qval; } ;
struct nfsrv_descript {TYPE_2__ nd_clientid; } ;
struct TYPE_3__ {int qval; } ;
struct nfslayout {int lay_mirrorcnt; scalar_t__ lay_layoutlen; scalar_t__ lay_xdr; int lay_fsid; TYPE_1__ lay_clientid; void* lay_fh; int lay_flags; int lay_type; } ;
typedef int fsid_t ;
typedef char fhandle_t ;


 char* FLEX_OWNERID ;
 char* FLEX_UID0 ;
 int M_NFSDSTATE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSBCOPY (char*,void**,int) ;
 int NFSLAYOUTIOMODE_RW ;
 int NFSLAYOUT_FLEXFILE ;
 int NFSLAY_READ ;
 int NFSLAY_RW ;
 int NFSM_RNDUP (int) ;
 int NFSX_UNSIGNED ;
 int NFSX_V4DEVICEID ;
 scalar_t__ NFSX_V4FLEXLAYOUT (int) ;
 int NFSX_V4PNFSFH ;
 struct nfslayout* malloc (scalar_t__,int ,int) ;
 scalar_t__ nfsrv_flexlinuxhack ;
 int strlen (char*) ;
 int txdr_hyper (scalar_t__,void**) ;
 void* txdr_unsigned (int) ;

__attribute__((used)) static struct nfslayout *
nfsrv_flexlayout(struct nfsrv_descript *nd, int iomode, int mirrorcnt,
    fhandle_t *fhp, fhandle_t *dsfhp, char *devid, fsid_t fs)
{
 uint32_t *tl;
 struct nfslayout *lyp;
 uint64_t lenval;
 int i;

 lyp = malloc(sizeof(struct nfslayout) + NFSX_V4FLEXLAYOUT(mirrorcnt),
     M_NFSDSTATE, M_WAITOK | M_ZERO);
 lyp->lay_type = NFSLAYOUT_FLEXFILE;
 if (iomode == NFSLAYOUTIOMODE_RW)
  lyp->lay_flags = NFSLAY_RW;
 else
  lyp->lay_flags = NFSLAY_READ;
 NFSBCOPY(fhp, &lyp->lay_fh, sizeof(*fhp));
 lyp->lay_clientid.qval = nd->nd_clientid.qval;
 lyp->lay_fsid = fs;
 lyp->lay_mirrorcnt = mirrorcnt;


 tl = (uint32_t *)lyp->lay_xdr;
 lenval = 0;
 txdr_hyper(lenval, tl); tl += 2;
 *tl++ = txdr_unsigned(mirrorcnt);
 for (i = 0; i < mirrorcnt; i++) {
  *tl++ = txdr_unsigned(1);
  NFSBCOPY(devid, tl, NFSX_V4DEVICEID);
  tl += (NFSX_V4DEVICEID / NFSX_UNSIGNED);
  devid += NFSX_V4DEVICEID;
  *tl++ = txdr_unsigned(1);
  *tl++ = 0;
  *tl++ = 0x55555555;
  *tl++ = 0x55555555;
  *tl++ = 0x55555555;
  *tl++ = txdr_unsigned(1);
  *tl++ = txdr_unsigned(NFSX_V4PNFSFH);
  NFSBCOPY(dsfhp, tl, sizeof(*dsfhp));
  tl += (NFSM_RNDUP(NFSX_V4PNFSFH) / NFSX_UNSIGNED);
  dsfhp++;
  if (nfsrv_flexlinuxhack != 0) {
   *tl++ = txdr_unsigned(strlen(FLEX_UID0));
   *tl = 0;
   NFSBCOPY(FLEX_UID0, tl++, strlen(FLEX_UID0));
   *tl++ = txdr_unsigned(strlen(FLEX_UID0));
   *tl = 0;
   NFSBCOPY(FLEX_UID0, tl++, strlen(FLEX_UID0));
  } else {
   *tl++ = txdr_unsigned(strlen(FLEX_OWNERID));
   NFSBCOPY(FLEX_OWNERID, tl++, NFSX_UNSIGNED);
   *tl++ = txdr_unsigned(strlen(FLEX_OWNERID));
   NFSBCOPY(FLEX_OWNERID, tl++, NFSX_UNSIGNED);
  }
 }
 *tl++ = txdr_unsigned(0);
 *tl = txdr_unsigned(60);
 lyp->lay_layoutlen = NFSX_V4FLEXLAYOUT(mirrorcnt);
 return (lyp);
}
