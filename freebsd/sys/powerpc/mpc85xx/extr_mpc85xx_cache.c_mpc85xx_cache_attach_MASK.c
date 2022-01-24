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
struct mpc85xx_cache_softc {int /*<<< orphan*/ * sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cache_size ;
typedef  int /*<<< orphan*/  cache_line_size ;

/* Variables and functions */
 int ENOMEM ; 
 int L2CTL_L2E ; 
 int L2CTL_L2I ; 
 int /*<<< orphan*/  L2_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct mpc85xx_cache_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mpc85xx_cache_softc *sc = FUNC4(dev);
	int rid;
	int cache_line_size, cache_size;

	/* Map registers. */
	rid = 0;
	sc->sc_mem = FUNC1(dev,
		     SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->sc_mem == NULL)
		return (ENOMEM);

	/* Enable cache and flash invalidate. */
	__asm __volatile ("mbar; isync" ::: "memory");
	FUNC3(sc->sc_mem, L2_CTL, L2CTL_L2E | L2CTL_L2I);
	FUNC2(sc->sc_mem, L2_CTL);
	__asm __volatile ("mbar" ::: "memory");

	cache_line_size = 0;
	cache_size = 0;
	FUNC0(FUNC6(dev), "cache-size", &cache_size,
	    sizeof(cache_size));
	FUNC0(FUNC6(dev), "cache-line-size",
	    &cache_line_size, sizeof(cache_line_size));

	if (cache_line_size != 0 && cache_size != 0)
		FUNC5(dev,
		    "L2 cache size: %dKB, cache line size: %d bytes\n",
		    cache_size / 1024, cache_line_size);

	return (0);
}