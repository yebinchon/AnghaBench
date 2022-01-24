#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bcm_mips_softc {int /*<<< orphan*/  dev; TYPE_1__* isrcs; } ;
struct TYPE_2__ {size_t ivec; int /*<<< orphan*/  isrc; scalar_t__ refs; int /*<<< orphan*/ * cpuirq; } ;

/* Variables and functions */
 uintptr_t FUNC0 (struct bcm_mips_softc*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t,char*,char const*,size_t) ; 
 size_t FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct bcm_mips_softc *sc)
{
	const char	*name;
	uintptr_t	 xref;
	int		 error;

	xref = FUNC0(sc);

	name = FUNC1(sc->dev);
	for (size_t ivec = 0; ivec < FUNC5(sc->isrcs); ivec++) {
		sc->isrcs[ivec].ivec = ivec;
		sc->isrcs[ivec].cpuirq = NULL;
		sc->isrcs[ivec].refs = 0;

		error = FUNC4(&sc->isrcs[ivec].isrc, sc->dev,
		    xref, "%s,%u", name, ivec);
		if (error) {
			for (size_t i = 0; i < ivec; i++)
				FUNC3(&sc->isrcs[i].isrc);

			FUNC2(sc->dev, "error registering IRQ %zu: "
			    "%d\n", ivec, error);
			return (error);
		}
	}

	return (0);
}