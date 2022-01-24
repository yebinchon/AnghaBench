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
struct xbd_softc {uintptr_t xbd_ring_pages; int /*<<< orphan*/  xbd_dev; int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/ * xbd_ring_ref; int /*<<< orphan*/  xbd_ring; } ;
typedef  int /*<<< orphan*/  ring_ref_name ;
typedef  int /*<<< orphan*/  blkif_sring_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_XENBLOCKFRONT ; 
 int M_ZERO ; 
 int PAGE_SHIFT ; 
 uintptr_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/ * FUNC2 (uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/  xbd_int ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xbd_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC11(struct xbd_softc *sc)
{
	blkif_sring_t *sring;
	uintptr_t sring_page_addr;
	int error;
	int i;

	sring = FUNC2(sc->xbd_ring_pages * PAGE_SIZE, M_XENBLOCKFRONT,
	    M_NOWAIT|M_ZERO);
	if (sring == NULL) {
		FUNC6(sc->xbd_dev, ENOMEM, "allocating shared ring");
		return (ENOMEM);
	}
	FUNC1(sring);
	FUNC0(&sc->xbd_ring, sring, sc->xbd_ring_pages * PAGE_SIZE);

	for (i = 0, sring_page_addr = (uintptr_t)sring;
	     i < sc->xbd_ring_pages;
	     i++, sring_page_addr += PAGE_SIZE) {

		error = FUNC9(sc->xbd_dev,
		    (FUNC4(sring_page_addr) >> PAGE_SHIFT),
		    &sc->xbd_ring_ref[i]);
		if (error) {
			FUNC6(sc->xbd_dev, error,
			    "granting ring_ref(%d)", i);
			return (error);
		}
	}
	if (sc->xbd_ring_pages == 1) {
		error = FUNC10(XST_NIL, FUNC7(sc->xbd_dev),
		    "ring-ref", "%u", sc->xbd_ring_ref[0]);
		if (error) {
			FUNC6(sc->xbd_dev, error,
			    "writing %s/ring-ref",
			    FUNC7(sc->xbd_dev));
			return (error);
		}
	} else {
		for (i = 0; i < sc->xbd_ring_pages; i++) {
			char ring_ref_name[]= "ring_refXX";

			FUNC3(ring_ref_name, sizeof(ring_ref_name),
			    "ring-ref%u", i);
			error = FUNC10(XST_NIL, FUNC7(sc->xbd_dev),
			     ring_ref_name, "%u", sc->xbd_ring_ref[i]);
			if (error) {
				FUNC6(sc->xbd_dev, error,
				    "writing %s/%s",
				    FUNC7(sc->xbd_dev),
				    ring_ref_name);
				return (error);
			}
		}
	}

	error = FUNC5(sc->xbd_dev,
	    FUNC8(sc->xbd_dev), NULL, xbd_int, sc,
	    INTR_TYPE_BIO | INTR_MPSAFE, &sc->xen_intr_handle);
	if (error) {
		FUNC6(sc->xbd_dev, error,
		    "xen_intr_alloc_and_bind_local_port failed");
		return (error);
	}

	return (0);
}