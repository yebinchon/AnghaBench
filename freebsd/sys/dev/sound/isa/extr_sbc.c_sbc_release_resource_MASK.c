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
struct sbc_softc {int* io_alloced; int* drq_alloced; int* irq_alloced; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRQ_MAX ; 
 int /*<<< orphan*/  IO_MAX ; 
 int /*<<< orphan*/  IRQ_MAX ; 
#define  SYS_RES_DRQ 130 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_IRQ 128 
 struct sbc_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t bus, device_t child, int type, int rid,
			struct resource *r)
{
	struct sbc_softc *scp;
	int *alloced, rid_max;

	scp = FUNC0(bus);
	switch (type) {
	case SYS_RES_IOPORT:
		alloced = scp->io_alloced;
		rid_max = IO_MAX - 1;
		break;
	case SYS_RES_DRQ:
		alloced = scp->drq_alloced;
		rid_max = DRQ_MAX - 1;
		break;
	case SYS_RES_IRQ:
		alloced = scp->irq_alloced;
		rid_max = IRQ_MAX - 1;
		break;
	default:
		return (1);
	}

	if (rid > rid_max || alloced[rid] == 0)
		return (1);

	alloced[rid]--;
	return (0);
}