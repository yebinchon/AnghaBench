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
typedef  scalar_t__ u_int ;
struct chipc_softc {int /*<<< orphan*/  mem_regions; int /*<<< orphan*/  mem_rman; int /*<<< orphan*/  dev; } ;
struct chipc_region {scalar_t__ cr_rid; int /*<<< orphan*/  cr_end; int /*<<< orphan*/  cr_addr; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct chipc_region*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct chipc_region* FUNC4 (struct chipc_softc*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct chipc_softc*,struct chipc_region*) ; 
 int /*<<< orphan*/  cr_link ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (struct chipc_softc *sc, bhnd_port_type type,
    u_int port)
{
	struct	chipc_region	*cr;
	rman_res_t		 start, end;
	u_int			 num_regions;
	int			 error;

	num_regions = FUNC2(sc->dev, type, port);
	for (u_int region = 0; region < num_regions; region++) {
		/* Allocate new region record */
		cr = FUNC4(sc, type, port, region);
		if (cr == NULL)
			return (ENODEV);

		/* Can't manage regions that cannot be allocated */
		if (cr->cr_rid < 0) {
			FUNC0(sc->dev, "no rid for chipc region "
			    "%s%u.%u", FUNC3(type), port, region);
			FUNC5(sc, cr);
			continue;
		}

		/* Add to rman's managed range */
		start = cr->cr_addr;
		end = cr->cr_end;
		if ((error = FUNC6(&sc->mem_rman, start, end))) {
			FUNC5(sc, cr);
			return (error);
		}

		/* Add to region list */
		FUNC1(&sc->mem_regions, cr, cr_link);
	}

	return (0);
}