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
struct pcib_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int WIN_IO ; 
 int WIN_MEM ; 
 int WIN_PMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcib_softc*,int) ; 

__attribute__((used)) static void
FUNC4(struct pcib_softc *sc)
{
#ifndef NEW_PCIB
	uint16_t command;
#endif

#ifdef NEW_PCIB
	pcib_write_windows(sc, WIN_IO | WIN_MEM | WIN_PMEM);
#else
	command = FUNC0(sc->dev, PCIR_COMMAND, 2);
	if (command & PCIM_CMD_PORTEN)
		FUNC1(sc);
	if (command & PCIM_CMD_MEMEN)
		FUNC2(sc);
#endif
}