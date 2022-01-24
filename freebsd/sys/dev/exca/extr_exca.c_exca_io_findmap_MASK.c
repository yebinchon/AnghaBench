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
struct resource {int dummy; } ;
struct exca_softc {TYPE_1__* io; } ;
struct TYPE_2__ {scalar_t__ iot; scalar_t__ addr; scalar_t__ size; } ;

/* Variables and functions */
 int EXCA_IO_WINS ; 
 scalar_t__ FUNC0 (struct resource*) ; 
 scalar_t__ FUNC1 (struct resource*) ; 
 scalar_t__ FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(struct exca_softc *sc, struct resource *res)
{
	int win;

	for (win = 0; win < EXCA_IO_WINS; win++) {
		if (sc->io[win].iot == FUNC0(res) &&
		    sc->io[win].addr == FUNC2(res) &&
		    sc->io[win].size == FUNC1(res))
			return (win);
	}
	return (-1);
}