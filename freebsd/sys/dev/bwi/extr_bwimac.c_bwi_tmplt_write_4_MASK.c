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
struct bwi_softc {int dummy; } ;
struct bwi_mac {int mac_flags; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int BWI_MAC_F_BSWAP ; 
 int /*<<< orphan*/  BWI_MAC_TMPLT_CTRL ; 
 int /*<<< orphan*/  BWI_MAC_TMPLT_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct bwi_mac *mac, uint32_t ofs, uint32_t val)
{
	struct bwi_softc *sc = mac->mac_sc;

	if (mac->mac_flags & BWI_MAC_F_BSWAP)
		val = FUNC1(val);

	FUNC0(sc, BWI_MAC_TMPLT_CTRL, ofs);
	FUNC0(sc, BWI_MAC_TMPLT_DATA, val);
}