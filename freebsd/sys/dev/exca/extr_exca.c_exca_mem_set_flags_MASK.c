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
struct TYPE_2__ {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int ENOENT ; 
#define  PCCARD_A_MEM_16BIT 131 
#define  PCCARD_A_MEM_8BIT 130 
#define  PCCARD_A_MEM_ATTR 129 
#define  PCCARD_A_MEM_COM 128 
 int /*<<< orphan*/  PCCARD_MEM_16BIT ; 
 int /*<<< orphan*/  PCCARD_MEM_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct exca_softc*,int) ; 
 int FUNC2 (struct exca_softc*,struct resource*) ; 

int
FUNC3(struct exca_softc *sc, struct resource *res, uint32_t flags)
{
	int win;

	win = FUNC2(sc, res);
	if (win < 0) {
		FUNC0(sc->dev,
		    "set_res_flags: specified resource not active\n");
		return (ENOENT);
	}

	switch (flags)
	{
	case PCCARD_A_MEM_ATTR:
		sc->mem[win].kind |= PCCARD_MEM_ATTR;
		break;
	case PCCARD_A_MEM_COM:
		sc->mem[win].kind &= ~PCCARD_MEM_ATTR;
		break;
	case PCCARD_A_MEM_16BIT:
		sc->mem[win].kind |= PCCARD_MEM_16BIT;
		break;
	case PCCARD_A_MEM_8BIT:
		sc->mem[win].kind &= ~PCCARD_MEM_16BIT;
		break;
	}
	FUNC1(sc, win);
	return (0);
}