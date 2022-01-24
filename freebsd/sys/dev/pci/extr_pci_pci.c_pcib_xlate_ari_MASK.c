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
struct pcib_softc {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCIB_ENABLE_ARI ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 struct pcib_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC4(device_t pcib, int bus, int *slot, int *func)
{
	struct pcib_softc *sc;
	int ari_func;

	sc = FUNC3(pcib);
	ari_func = *func;

	if (sc->flags & PCIB_ENABLE_ARI) {
		FUNC0(*slot == 0,
		    ("Non-zero slot number with ARI enabled!"));
		*slot = FUNC2(ari_func);
		*func = FUNC1(ari_func);
	}
}