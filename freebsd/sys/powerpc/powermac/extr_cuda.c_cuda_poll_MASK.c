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
typedef  int /*<<< orphan*/  u_int ;
struct cuda_softc {scalar_t__ sc_state; int /*<<< orphan*/  sc_waiting; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CUDA_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cuda_softc*) ; 
 struct cuda_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(device_t dev)
{
	struct cuda_softc *sc = FUNC2(dev);

	if (sc->sc_state == CUDA_IDLE && !FUNC1(sc) && 
	    !sc->sc_waiting)
		return (0);

	FUNC0(dev);
	return (0);
}