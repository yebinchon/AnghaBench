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
typedef  int uint16_t ;
struct atu_opt {int mac_01; int mac_23; int mac_45; int fid; } ;
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATU_DATA ; 
 int /*<<< orphan*/  ATU_FID ; 
 int /*<<< orphan*/  ATU_MAC_ADDR01 ; 
 int /*<<< orphan*/  ATU_MAC_ADDR23 ; 
 int /*<<< orphan*/  ATU_MAC_ADDR45 ; 
 int /*<<< orphan*/  ATU_OPERATION ; 
 int ATU_UNIT_BUSY ; 
 int CLEAR_VIOLATION_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENTRY_STATE ; 
 int GET_NEXT_IN_FIB ; 
 int GET_VIOLATION_DATA ; 
 int LOAD_FROM_FIB ; 
 int NO_OPERATION ; 
 int PURGE_FROM_FIB ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  REG_GLOBAL2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, e6000sw_softc_t *sc, struct atu_opt *atu,
    int flag)
{
	uint16_t ret_opt;
	uint16_t ret_data;

	if (flag == NO_OPERATION)
		return (0);
	else if ((flag & (LOAD_FROM_FIB | PURGE_FROM_FIB | GET_NEXT_IN_FIB |
	    GET_VIOLATION_DATA | CLEAR_VIOLATION_DATA)) == 0) {
		FUNC1(dev, "Wrong Opcode for ATU operation\n");
		return (EINVAL);
	}

	if (FUNC0(sc, ATU_OPERATION, ATU_UNIT_BUSY)) {
		FUNC1(dev, "ATU unit is busy, cannot access\n");
		return (EBUSY);
	}

	ret_opt = FUNC2(sc, REG_GLOBAL, ATU_OPERATION);
	if (flag & LOAD_FROM_FIB) {
		ret_data = FUNC2(sc, REG_GLOBAL, ATU_DATA);
		FUNC3(sc, REG_GLOBAL2, ATU_DATA, (ret_data &
		    ~ENTRY_STATE));
	}
	FUNC3(sc, REG_GLOBAL, ATU_MAC_ADDR01, atu->mac_01);
	FUNC3(sc, REG_GLOBAL, ATU_MAC_ADDR23, atu->mac_23);
	FUNC3(sc, REG_GLOBAL, ATU_MAC_ADDR45, atu->mac_45);
	FUNC3(sc, REG_GLOBAL, ATU_FID, atu->fid);

	FUNC3(sc, REG_GLOBAL, ATU_OPERATION,
	    (ret_opt | ATU_UNIT_BUSY | flag));

	if (FUNC0(sc, ATU_OPERATION, ATU_UNIT_BUSY))
		FUNC1(dev, "Timeout while waiting ATU\n");
	else if (flag & GET_NEXT_IN_FIB) {
		atu->mac_01 = FUNC2(sc, REG_GLOBAL,
		    ATU_MAC_ADDR01);
		atu->mac_23 = FUNC2(sc, REG_GLOBAL,
		    ATU_MAC_ADDR23);
		atu->mac_45 = FUNC2(sc, REG_GLOBAL,
		    ATU_MAC_ADDR45);
	}

	return (0);
}