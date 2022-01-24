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
typedef  int /*<<< orphan*/  uint8_t ;
struct dme_softc {int /*<<< orphan*/  dme_handle; int /*<<< orphan*/  dme_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  CMD_ADDR ; 
 int /*<<< orphan*/  DATA_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct dme_softc *sc, uint8_t reg, uint8_t value)
{

	/* Send the register to write to */
	FUNC1(sc->dme_tag, sc->dme_handle, CMD_ADDR, reg);
	FUNC0(sc->dme_tag, sc->dme_handle, CMD_ADDR, 1,
	    BUS_SPACE_BARRIER_WRITE);

	/* Write the value to the register */
	FUNC1(sc->dme_tag, sc->dme_handle, DATA_ADDR, value);
	FUNC0(sc->dme_tag, sc->dme_handle, DATA_ADDR, 1,
	    BUS_SPACE_BARRIER_WRITE);
}