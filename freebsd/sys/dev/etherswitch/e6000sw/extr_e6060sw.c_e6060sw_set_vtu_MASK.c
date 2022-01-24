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
struct e6060sw_softc {scalar_t__ smi_offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ GLOBAL_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int VTU_BUSY ; 
 int /*<<< orphan*/  VTU_DATA1_REG ; 
 int /*<<< orphan*/  VTU_DATA2_REG ; 
 int VTU_LOAD_PURGE ; 
 int /*<<< orphan*/  VTU_OPERATION ; 
 int /*<<< orphan*/  VTU_VID_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct e6060sw_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, int num, int data1, int data2)
{
	struct e6060sw_softc *sc;
	int busy;

	sc = FUNC3(dev);

	FUNC1(FUNC2(dev), GLOBAL_REGISTER + sc->smi_offset,
	    VTU_DATA1_REG, data1);
	FUNC1(FUNC2(dev), GLOBAL_REGISTER + sc->smi_offset,
	    VTU_DATA2_REG, data2);
	FUNC1(FUNC2(dev), GLOBAL_REGISTER + sc->smi_offset,
	    VTU_VID_REG, 0x1000 | num);
	FUNC1(FUNC2(dev), GLOBAL_REGISTER + sc->smi_offset,
	    VTU_OPERATION, VTU_BUSY | (VTU_LOAD_PURGE << 12) | num);
	while (1) {
		busy = FUNC0(FUNC2(dev),
		    GLOBAL_REGISTER + sc->smi_offset, VTU_OPERATION);
		if ((busy & VTU_BUSY) == 0)
			break;
	}

}