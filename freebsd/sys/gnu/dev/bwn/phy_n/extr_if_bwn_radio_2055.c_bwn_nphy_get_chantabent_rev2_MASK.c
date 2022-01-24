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
typedef  scalar_t__ uint8_t ;
struct bwn_nphy_channeltab_entry_rev2 {scalar_t__ channel; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 struct bwn_nphy_channeltab_entry_rev2* bwn_nphy_channeltab_rev2 ; 
 unsigned int FUNC0 (struct bwn_nphy_channeltab_entry_rev2*) ; 

const struct bwn_nphy_channeltab_entry_rev2 *
FUNC1(struct bwn_mac *mac, uint8_t channel)
{
	const struct bwn_nphy_channeltab_entry_rev2 *e;
	unsigned int i;

	for (i = 0; i < FUNC0(bwn_nphy_channeltab_rev2); i++) {
		e = &(bwn_nphy_channeltab_rev2[i]);
		if (e->channel == channel)
			return e;
	}

	return NULL;
}