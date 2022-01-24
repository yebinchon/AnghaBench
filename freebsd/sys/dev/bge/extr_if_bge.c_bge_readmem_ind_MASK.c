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
struct bge_softc {scalar_t__ bge_asicrev; int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5906 ; 
 int /*<<< orphan*/  BGE_PCI_MEMWIN_BASEADDR ; 
 int /*<<< orphan*/  BGE_PCI_MEMWIN_DATA ; 
 int BGE_SEND_RING_1_TO_4 ; 
 int BGE_STATS_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static uint32_t
FUNC2(struct bge_softc *sc, int off)
{
	device_t dev;
	uint32_t val;

	if (sc->bge_asicrev == BGE_ASICREV_BCM5906 &&
	    off >= BGE_STATS_BLOCK && off < BGE_SEND_RING_1_TO_4)
		return (0);

	dev = sc->bge_dev;

	FUNC1(dev, BGE_PCI_MEMWIN_BASEADDR, off, 4);
	val = FUNC0(dev, BGE_PCI_MEMWIN_DATA, 4);
	FUNC1(dev, BGE_PCI_MEMWIN_BASEADDR, 0, 4);
	return (val);
}