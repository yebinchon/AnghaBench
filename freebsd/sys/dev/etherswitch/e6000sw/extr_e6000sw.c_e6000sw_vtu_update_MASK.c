#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int num_ports; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ e6000sw_softc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int VTU_BUSY ; 
 int /*<<< orphan*/  VTU_DATA ; 
 int /*<<< orphan*/  VTU_DATA2 ; 
 int /*<<< orphan*/  VTU_FID ; 
 int FUNC1 (TYPE_1__*) ; 
 int VTU_LOAD ; 
 int /*<<< orphan*/  VTU_OPERATION ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int VTU_PORT_DISCARD ; 
 int VTU_PORT_TAGGED ; 
 int VTU_PORT_UNTAGGED ; 
 int FUNC3 (TYPE_1__*) ; 
 int VTU_PURGE ; 
 int /*<<< orphan*/  VTU_VID ; 
 int VTU_VID_MASK ; 
 int VTU_VID_VALID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(e6000sw_softc_t *sc, int purge, int vid, int fid,
    int members, int untagged)
{
	int i, op;
	uint32_t data[2];

	if (FUNC0(sc, VTU_OPERATION, VTU_BUSY)) {
		FUNC4(sc->dev, "VTU unit is busy, cannot access\n");
		return (EBUSY);
	}

	*data = (vid & VTU_VID_MASK);
	if (purge == 0)
		*data |= VTU_VID_VALID;
	FUNC5(sc, REG_GLOBAL, VTU_VID, *data);

	if (purge == 0) {
		data[0] = 0;
		data[1] = 0;
		for (i = 0; i < sc->num_ports; i++) {
			if ((untagged & (1 << i)) != 0)
				data[i / FUNC3(sc)] |=
				    VTU_PORT_UNTAGGED << FUNC2(sc, i);
			else if ((members & (1 << i)) != 0)
				data[i / FUNC3(sc)] |=
				    VTU_PORT_TAGGED << FUNC2(sc, i);
			else
				data[i / FUNC3(sc)] |=
				    VTU_PORT_DISCARD << FUNC2(sc, i);
		}
		FUNC5(sc, REG_GLOBAL, VTU_DATA, data[0]);
		FUNC5(sc, REG_GLOBAL, VTU_DATA2, data[1]);
		FUNC5(sc, REG_GLOBAL, VTU_FID,
		    fid & FUNC1(sc));
		op = VTU_LOAD;
	} else
		op = VTU_PURGE;

	FUNC5(sc, REG_GLOBAL, VTU_OPERATION, op | VTU_BUSY);
	if (FUNC0(sc, VTU_OPERATION, VTU_BUSY)) {
		FUNC4(sc->dev, "Timeout while flushing VTU\n");
		return (ETIMEDOUT);
	}

	return (0);
}