#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct storvsc_softc {int /*<<< orphan*/  storvsc_req_dtag; int /*<<< orphan*/  hs_free_list; TYPE_1__* hs_drv_props; } ;
struct hv_storvsc_request {int /*<<< orphan*/  data_dmap; struct storvsc_softc* softc; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int drv_max_ios_per_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 struct hv_storvsc_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hv_storvsc_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_storvsc_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  STORVSC_DATA_SEGCNT_MAX ; 
 int /*<<< orphan*/  STORVSC_DATA_SEGSZ_MAX ; 
 int /*<<< orphan*/  STORVSC_DATA_SIZE_MAX ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct storvsc_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct hv_storvsc_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct hv_storvsc_request* FUNC11 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct storvsc_softc *sc = FUNC8(dev);
	struct hv_storvsc_request *reqp;
	int error, i;

	FUNC1(&sc->hs_free_list);

	error = FUNC4(
		FUNC7(dev),		/* parent */
		1,				/* alignment */
		PAGE_SIZE,			/* boundary */
		BUS_SPACE_MAXADDR,		/* lowaddr */
		BUS_SPACE_MAXADDR,		/* highaddr */
		NULL, NULL,			/* filter, filterarg */
		STORVSC_DATA_SIZE_MAX,		/* maxsize */
		STORVSC_DATA_SEGCNT_MAX,	/* nsegments */
		STORVSC_DATA_SEGSZ_MAX,		/* maxsegsize */
		0,				/* flags */
		NULL,				/* lockfunc */
		NULL,				/* lockfuncarg */
		&sc->storvsc_req_dtag);
	if (error) {
		FUNC9(dev, "failed to create storvsc dma tag\n");
		return (error);
	}

	for (i = 0; i < sc->hs_drv_props->drv_max_ios_per_target; ++i) {
		reqp = FUNC11(sizeof(struct hv_storvsc_request),
				 M_DEVBUF, M_WAITOK|M_ZERO);
		reqp->softc = sc;
		error = FUNC5(sc->storvsc_req_dtag, 0,
				&reqp->data_dmap);
		if (error) {
			FUNC9(dev, "failed to allocate storvsc "
			    "data dmamap\n");
			goto cleanup;
		}
		FUNC2(&sc->hs_free_list, reqp, link);
	}
	return (0);

cleanup:
	while ((reqp = FUNC0(&sc->hs_free_list)) != NULL) {
		FUNC3(reqp, link);
		FUNC6(sc->storvsc_req_dtag, reqp->data_dmap);
		FUNC10(reqp, M_DEVBUF);
	}
	return (error);
}