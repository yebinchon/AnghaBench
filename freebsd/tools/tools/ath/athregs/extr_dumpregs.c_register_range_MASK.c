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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct dumpreg {int addr; int type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dumpreg*,int,int,int,int,int) ; 

void
FUNC3(u_int brange, u_int erange, int type,
	int def_srev_min, int def_srev_max, int def_phy_min, int def_phy_max)
{
	struct dumpreg *bbregs, *r;
	int i, nregs;

	nregs = (erange - brange) / sizeof(uint32_t);
	bbregs = (struct dumpreg *) FUNC0(nregs, sizeof(struct dumpreg));
	if (bbregs == NULL)
		FUNC1(-1, "no space for %d register slots (type %d)\n",
		    nregs, type);
	r = bbregs;
	for (i = 0; i < nregs; i++) {
		r->addr = brange + (i<<2);
		r->type = type;
		r++;
	}
	FUNC2(bbregs, nregs,
	    def_srev_min, def_srev_max, def_phy_min, def_phy_max);
}