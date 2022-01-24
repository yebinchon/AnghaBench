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
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct chipc_region {TYPE_1__* cr_res; scalar_t__ cr_addr; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bhnd_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  res; scalar_t__ direct; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 struct chipc_region* FUNC0 (struct chipc_softc*,scalar_t__,scalar_t__) ; 
 struct rman* FUNC1 (struct chipc_softc*,int) ; 
 int FUNC2 (struct resource*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 
 scalar_t__ FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC10(struct chipc_softc *sc, device_t child, int type,
    int rid, struct resource *r, bool req_direct)
{
	struct rman		*rm;
	struct chipc_region	*cr;
	bhnd_size_t		 cr_offset;
	rman_res_t		 r_start, r_end, r_size;
	int			 error;

	rm = FUNC1(sc, type);
	if (rm == NULL || !FUNC9(r, rm))
		return (EINVAL);

	r_start = FUNC8(r);
	r_end = FUNC6(r);
	r_size = FUNC7(r);

	/* Find the corresponding chipc region */
	cr = FUNC0(sc, r_start, r_end);
	if (cr == NULL)
		return (EINVAL);
	
	/* Calculate subregion offset within the chipc region */
	cr_offset = r_start - cr->cr_addr;

	/* Retain (and activate, if necessary) the chipc region */
	if ((error = FUNC4(sc, cr, RF_ACTIVE)))
		return (error);

	/* Configure child resource with its subregion values. */
	if (cr->cr_res->direct) {
		error = FUNC2(r, cr->cr_res->res,
		    cr_offset, r_size);
		if (error)
			goto cleanup;

		/* Mark active */
		if ((error = FUNC5(r)))
			goto cleanup;
	} else if (req_direct) {
		error = ENOMEM;
		goto cleanup;
	}

	return (0);

cleanup:
	FUNC3(sc, cr, RF_ACTIVE);
	return (error);
}