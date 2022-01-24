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
typedef  int /*<<< orphan*/  u_int ;
struct bcm_mips_intr_map_data {int /*<<< orphan*/  mdata; int /*<<< orphan*/  ivec; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTR_MAP_DATA_BCM_MIPS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, u_int intr, rman_res_t *irq)
{
	struct bcm_mips_intr_map_data	*imd;
	u_int				 ivec;
	uintptr_t			 xref;
	int				 error;

	/* Fetch the backplane interrupt vector */
	if ((error = FUNC2(child, intr, &ivec))) {
		FUNC3(dev, "error fetching ivec for intr %u: %d\n",
		    intr, error);
		return (error);
	}

	/* Determine our interrupt domain */
	xref = FUNC0(dev, child, false);
	FUNC1(xref != 0, ("missing interrupt domain"));

	/* Allocate our map data */
	imd = (struct bcm_mips_intr_map_data *)FUNC4(
	    INTR_MAP_DATA_BCM_MIPS, sizeof(*imd), M_WAITOK | M_ZERO);
	imd->ivec = ivec;

	/* Map the IRQ */
	*irq = FUNC5(NULL, xref, &imd->mdata);
	return (0);
}