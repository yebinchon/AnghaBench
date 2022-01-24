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
struct tumbler_softc {int /*<<< orphan*/  sc_addr; void* sc_dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 struct tumbler_softc* FUNC0 (void*) ; 
 void* i2s_mixer ; 
 int /*<<< orphan*/ * i2s_mixer_class ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  tumbler_mixer_class ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct tumbler_softc *sc;
		
	sc = FUNC0(dev);
	sc->sc_dev = dev;
	sc->sc_addr = FUNC1(dev);

	i2s_mixer_class = &tumbler_mixer_class;
	i2s_mixer = dev;

	return (0);
}