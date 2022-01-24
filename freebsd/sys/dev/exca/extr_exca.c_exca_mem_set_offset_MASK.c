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
typedef  int uint32_t ;
struct resource {int dummy; } ;
struct exca_softc {TYPE_1__* mem; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int realsize; int size; int /*<<< orphan*/  cardaddr; } ;

/* Variables and functions */
 int ENOENT ; 
 int EXCA_MEM_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct exca_softc*,int) ; 
 int FUNC2 (struct exca_softc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int
FUNC4(struct exca_softc *sc, struct resource *res,
    uint32_t cardaddr, uint32_t *deltap)
{
	int win;
	uint32_t delta;

	win = FUNC2(sc, res);
	if (win < 0) {
		FUNC0(sc->dev,
		    "set_memory_offset: specified resource not active\n");
		return (ENOENT);
	}
	sc->mem[win].cardaddr = FUNC3(cardaddr, EXCA_MEM_PAGESIZE);
	delta = cardaddr % EXCA_MEM_PAGESIZE;
	if (deltap)
		*deltap = delta;
	sc->mem[win].realsize = sc->mem[win].size + delta +
	    EXCA_MEM_PAGESIZE - 1;
	sc->mem[win].realsize = sc->mem[win].realsize -
	    (sc->mem[win].realsize % EXCA_MEM_PAGESIZE);
	FUNC1(sc, win);
	return (0);
}