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
struct cbb_softc {scalar_t__ cardok; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CBB_SOCKET_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t parent, device_t child)
{
	struct cbb_softc *sc = (struct cbb_softc *)FUNC2(parent);
	uint32_t sockstate;

	sockstate = FUNC1(sc, CBB_SOCKET_STATE);
	return (FUNC0(sockstate) && sc->cardok);
}