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
typedef  int /*<<< orphan*/  uint16_t ;
struct pcib_softc {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIB_ENABLE_ARI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct pcib_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t pcib, uint16_t rid, int *bus, int *slot,
    int *func)
{
	struct pcib_softc *sc;

	sc = FUNC5(pcib);

	*bus = FUNC2(rid);
	if (sc->flags & PCIB_ENABLE_ARI) {
		*slot = FUNC1(rid);
		*func = FUNC0(rid);
	} else {
		*slot = FUNC4(rid);
		*func = FUNC3(rid);
	}
}