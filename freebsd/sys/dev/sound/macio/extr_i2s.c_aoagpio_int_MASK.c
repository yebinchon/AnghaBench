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
struct aoagpio_softc {int level; int detect_active; scalar_t__ i2s; } ;
typedef  void* device_t ;

/* Variables and functions */
 int GPIO_LEVEL_RO ; 
 struct aoagpio_softc* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(void *cookie)
{
	device_t 		 self = cookie;
	struct aoagpio_softc	*sc;

	sc = FUNC0(self);
	
	if (FUNC2(self) & GPIO_LEVEL_RO)
		sc->level = sc->detect_active;
	else
		sc->level = !(sc->detect_active);

	if (sc->i2s)
		FUNC1(sc->i2s);
}