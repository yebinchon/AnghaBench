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
struct vr_softc {int /*<<< orphan*/  vr_inttask; } ;

/* Variables and functions */
 int FUNC0 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  VR_IMR ; 
 int VR_INTRS ; 
 int /*<<< orphan*/  VR_ISR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct vr_softc		*sc;
	uint16_t		status;

	sc = (struct vr_softc *)arg;

	status = FUNC0(sc, VR_ISR);
	if (status == 0 || status == 0xffff || (status & VR_INTRS) == 0)
		return (FILTER_STRAY);

	/* Disable interrupts. */
	FUNC1(sc, VR_IMR, 0x0000);

	FUNC2(taskqueue_fast, &sc->vr_inttask);

	return (FILTER_HANDLED);
}