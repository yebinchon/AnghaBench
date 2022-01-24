#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  void* uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  qval; } ;
struct nfsrv_descript {TYPE_2__ nd_clientid; } ;
struct TYPE_3__ {int /*<<< orphan*/  qval; } ;
struct nfslayout {int lay_mirrorcnt; scalar_t__ lay_layoutlen; scalar_t__ lay_xdr; int /*<<< orphan*/  lay_fsid; TYPE_1__ lay_clientid; void* lay_fh; int /*<<< orphan*/  lay_flags; int /*<<< orphan*/  lay_type; } ;
typedef  int /*<<< orphan*/  fsid_t ;
typedef  char fhandle_t ;

/* Variables and functions */
 char* FLEX_OWNERID ; 
 char* FLEX_UID0 ; 
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,void**,int) ; 
 int NFSLAYOUTIOMODE_RW ; 
 int /*<<< orphan*/  NFSLAYOUT_FLEXFILE ; 
 int /*<<< orphan*/  NFSLAY_READ ; 
 int /*<<< orphan*/  NFSLAY_RW ; 
 int FUNC1 (int) ; 
 int NFSX_UNSIGNED ; 
 int NFSX_V4DEVICEID ; 
 scalar_t__ FUNC2 (int) ; 
 int NFSX_V4PNFSFH ; 
 struct nfslayout* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nfsrv_flexlinuxhack ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void**) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static struct nfslayout *
FUNC7(struct nfsrv_descript *nd, int iomode, int mirrorcnt,
    fhandle_t *fhp, fhandle_t *dsfhp, char *devid, fsid_t fs)
{
	uint32_t *tl;
	struct nfslayout *lyp;
	uint64_t lenval;
	int i;

	lyp = FUNC3(sizeof(struct nfslayout) + FUNC2(mirrorcnt),
	    M_NFSDSTATE, M_WAITOK | M_ZERO);
	lyp->lay_type = NFSLAYOUT_FLEXFILE;
	if (iomode == NFSLAYOUTIOMODE_RW)
		lyp->lay_flags = NFSLAY_RW;
	else
		lyp->lay_flags = NFSLAY_READ;
	FUNC0(fhp, &lyp->lay_fh, sizeof(*fhp));
	lyp->lay_clientid.qval = nd->nd_clientid.qval;
	lyp->lay_fsid = fs;
	lyp->lay_mirrorcnt = mirrorcnt;

	/* Fill in the xdr for the files layout. */
	tl = (uint32_t *)lyp->lay_xdr;
	lenval = 0;
	FUNC5(lenval, tl); tl += 2;		/* Stripe unit. */
	*tl++ = FUNC6(mirrorcnt);		/* # of mirrors. */
	for (i = 0; i < mirrorcnt; i++) {
		*tl++ = FUNC6(1);		/* One stripe. */
		FUNC0(devid, tl, NFSX_V4DEVICEID);	/* Device ID. */
		tl += (NFSX_V4DEVICEID / NFSX_UNSIGNED);
		devid += NFSX_V4DEVICEID;
		*tl++ = FUNC6(1);		/* Efficiency. */
		*tl++ = 0;				/* Proxy Stateid. */
		*tl++ = 0x55555555;
		*tl++ = 0x55555555;
		*tl++ = 0x55555555;
		*tl++ = FUNC6(1);		/* 1 file handle. */
		*tl++ = FUNC6(NFSX_V4PNFSFH);
		FUNC0(dsfhp, tl, sizeof(*dsfhp));
		tl += (FUNC1(NFSX_V4PNFSFH) / NFSX_UNSIGNED);
		dsfhp++;
		if (nfsrv_flexlinuxhack != 0) {
			*tl++ = FUNC6(FUNC4(FLEX_UID0));
			*tl = 0;		/* 0 pad string. */
			FUNC0(FLEX_UID0, tl++, FUNC4(FLEX_UID0));
			*tl++ = FUNC6(FUNC4(FLEX_UID0));
			*tl = 0;		/* 0 pad string. */
			FUNC0(FLEX_UID0, tl++, FUNC4(FLEX_UID0));
		} else {
			*tl++ = FUNC6(FUNC4(FLEX_OWNERID));
			FUNC0(FLEX_OWNERID, tl++, NFSX_UNSIGNED);
			*tl++ = FUNC6(FUNC4(FLEX_OWNERID));
			FUNC0(FLEX_OWNERID, tl++, NFSX_UNSIGNED);
		}
	}
	*tl++ = FUNC6(0);		/* ff_flags. */
	*tl = FUNC6(60);		/* Status interval hint. */
	lyp->lay_layoutlen = FUNC2(mirrorcnt);
	return (lyp);
}