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
struct amdsmn_softc {int /*<<< orphan*/  smn_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct amdsmn_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(device_t dev)
{
	struct amdsmn_softc *sc = FUNC0(dev);

	FUNC1(&sc->smn_lock);
	return (0);
}