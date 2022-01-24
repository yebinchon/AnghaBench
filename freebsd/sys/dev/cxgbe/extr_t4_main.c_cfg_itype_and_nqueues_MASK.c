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
struct intrs_and_queues {int nirq; } ;
struct adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MSI ; 
 int INTR_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct intrs_and_queues*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int t4_intr_types ; 

__attribute__((used)) static int
FUNC7(struct adapter *sc, struct intrs_and_queues *iaq)
{
	int rc, itype, navail, nalloc;

	for (itype = INTR_MSIX; itype; itype >>= 1) {

		if ((itype & t4_intr_types) == 0)
			continue;	/* not allowed */

		if (itype == INTR_MSIX)
			navail = FUNC5(sc->dev);
		else if (itype == INTR_MSI)
			navail = FUNC4(sc->dev);
		else
			navail = 1;
restart:
		if (navail == 0)
			continue;

		FUNC0(sc, iaq, itype, navail);
		nalloc = iaq->nirq;
		rc = 0;
		if (itype == INTR_MSIX)
			rc = FUNC3(sc->dev, &nalloc);
		else if (itype == INTR_MSI)
			rc = FUNC2(sc->dev, &nalloc);

		if (rc == 0 && nalloc > 0) {
			if (nalloc == iaq->nirq)
				return (0);

			/*
			 * Didn't get the number requested.  Use whatever number
			 * the kernel is willing to allocate.
			 */
			FUNC1(sc->dev, "fewer vectors than requested, "
			    "type=%d, req=%d, rcvd=%d; will downshift req.\n",
			    itype, iaq->nirq, nalloc);
			FUNC6(sc->dev);
			navail = nalloc;
			goto restart;
		}

		FUNC1(sc->dev,
		    "failed to allocate vectors:%d, type=%d, req=%d, rcvd=%d\n",
		    itype, rc, iaq->nirq, nalloc);
	}

	FUNC1(sc->dev,
	    "failed to find a usable interrupt type.  "
	    "allowed=%d, msi-x=%d, msi=%d, intx=1", t4_intr_types,
	    FUNC5(sc->dev), FUNC4(sc->dev));

	return (ENXIO);
}