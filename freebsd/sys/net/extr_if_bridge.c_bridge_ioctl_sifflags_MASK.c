#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifbreq {int ifbr_ifsflags; int /*<<< orphan*/  ifbr_ifsname; } ;
struct bstp_port {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_flags; struct bstp_port bif_stp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int IFBIFMASK ; 
 int IFBIF_BSTP_AUTOEDGE ; 
 int IFBIF_BSTP_AUTOPTP ; 
 int IFBIF_BSTP_EDGE ; 
 int IFBIF_BSTP_PTP ; 
 int IFBIF_SPAN ; 
 int IFBIF_STP ; 
 struct bridge_iflist* FUNC0 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_port*) ; 
 int FUNC2 (struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bstp_port*,int) ; 

__attribute__((used)) static int
FUNC7(struct bridge_softc *sc, void *arg)
{
	struct ifbreq *req = arg;
	struct bridge_iflist *bif;
	struct bstp_port *bp;
	int error;

	bif = FUNC0(sc, req->ifbr_ifsname);
	if (bif == NULL)
		return (ENOENT);
	bp = &bif->bif_stp;

	if (req->ifbr_ifsflags & IFBIF_SPAN)
		/* SPAN is readonly */
		return (EINVAL);

	if (req->ifbr_ifsflags & IFBIF_STP) {
		if ((bif->bif_flags & IFBIF_STP) == 0) {
			error = FUNC2(&bif->bif_stp);
			if (error)
				return (error);
		}
	} else {
		if ((bif->bif_flags & IFBIF_STP) != 0)
			FUNC1(&bif->bif_stp);
	}

	/* Pass on STP flags */
	FUNC5(bp, req->ifbr_ifsflags & IFBIF_BSTP_EDGE ? 1 : 0);
	FUNC3(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOEDGE ? 1 : 0);
	FUNC6(bp, req->ifbr_ifsflags & IFBIF_BSTP_PTP ? 1 : 0);
	FUNC4(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOPTP ? 1 : 0);

	/* Save the bits relating to the bridge */
	bif->bif_flags = req->ifbr_ifsflags & IFBIFMASK;

	return (0);
}