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
typedef  int u_long ;
struct fwohci_softc {int dummy; } ;
struct fw_reg_req_t {void* data; int /*<<< orphan*/  addr; } ;
struct firewire_softc {scalar_t__ fc; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  fw_proc ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int FUNC0 (struct cdev*) ; 
#define  DUMPDMA 132 
 int EINVAL ; 
#define  FWOHCI_RDPHYREG 131 
#define  FWOHCI_RDREG 130 
#define  FWOHCI_WRPHYREG 129 
#define  FWOHCI_WRREG 128 
 int /*<<< orphan*/  OHCI_MAX_DMA_CH ; 
 int /*<<< orphan*/  OHCI_MAX_PHY_REG ; 
 int /*<<< orphan*/  OHCI_MAX_REG ; 
 void* FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ,void*) ; 
 struct firewire_softc* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firewire_devclass ; 
 void* FUNC6 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct fwohci_softc*,int /*<<< orphan*/ ,void*) ; 

int
FUNC8 (struct cdev *dev, u_long cmd, caddr_t data, int flag, fw_proc *td)
{
	struct firewire_softc *sc;
	struct fwohci_softc *fc;
	int unit = FUNC0(dev);
	int err = 0;
	struct fw_reg_req_t *reg = (struct fw_reg_req_t *) data;
	uint32_t *dmach = (uint32_t *) data;

	sc = FUNC3(firewire_devclass, unit);
	if (sc == NULL)
		return (EINVAL);

	fc = (struct fwohci_softc *)sc->fc;

	if (!data)
		return (EINVAL);

	switch (cmd) {
	case FWOHCI_WRREG:
#define OHCI_MAX_REG 0x800
		if (reg->addr <= OHCI_MAX_REG) {
			FUNC2(fc, reg->addr, reg->data);
			reg->data = FUNC1(fc, reg->addr);
		} else {
			err = EINVAL;
		}
		break;
	case FWOHCI_RDREG:
		if (reg->addr <= OHCI_MAX_REG) {
			reg->data = FUNC1(fc, reg->addr);
		} else {
			err = EINVAL;
		}
		break;
/* Read DMA descriptors for debug  */
	case DUMPDMA:
		if (*dmach <= OHCI_MAX_DMA_CH) {
			FUNC5(fc, *dmach);
			FUNC4(fc, *dmach);
		} else {
			err = EINVAL;
		}
		break;
/* Read/Write Phy registers */
#define OHCI_MAX_PHY_REG 0xf
	case FWOHCI_RDPHYREG:
		if (reg->addr <= OHCI_MAX_PHY_REG)
			reg->data = FUNC6(fc, reg->addr);
		else
			err = EINVAL;
		break;
	case FWOHCI_WRPHYREG:
		if (reg->addr <= OHCI_MAX_PHY_REG)
			reg->data = FUNC7(fc, reg->addr, reg->data);
		else
			err = EINVAL;
		break;
	default:
		err = EINVAL;
		break;
	}
	return err;
}