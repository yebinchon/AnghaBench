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
typedef  int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_MOBJ_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  BWI_MOBJ_DATA ; 
 int /*<<< orphan*/  BWI_MOBJ_DATA_UNALIGN ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint16_t
FUNC3(struct bwi_mac *mac, uint16_t obj_id, uint16_t ofs0)
{
	struct bwi_softc *sc = mac->mac_sc;
	uint32_t data_reg;
	int ofs;

	data_reg = BWI_MOBJ_DATA;
	ofs = ofs0 / 4;

	if (ofs0 % 4 != 0)
		data_reg = BWI_MOBJ_DATA_UNALIGN;

	FUNC2(sc, BWI_MOBJ_CTRL, FUNC0(obj_id, ofs));
	return FUNC1(sc, data_reg);
}