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
struct ioat_softc {int /*<<< orphan*/  submit_lock; } ;
typedef  int /*<<< orphan*/  bus_dmaengine_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioat_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ioat_softc* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(bus_dmaengine_t dmaengine)
{
	struct ioat_softc *ioat;

	ioat = FUNC3(dmaengine);
	FUNC1(&ioat->submit_lock);
	FUNC0(ioat);
	FUNC2(&ioat->submit_lock);
}