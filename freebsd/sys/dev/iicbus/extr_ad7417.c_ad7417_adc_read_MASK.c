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
typedef  int uint8_t ;
struct ad7417_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct ad7417_sensor {int id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct ad7417_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ad7417_sensor *sens)
{
	struct ad7417_softc *sc;
	uint8_t chan;
	int temp;

	sc = FUNC1(sens->dev);

	switch (sens->id) {
	case 11:
	case 16:
		chan = 1;
		break;
	case 12:
	case 17:
		chan = 2;
		break;
	case 13:
	case 18:
		chan = 3;
		break;
	case 14:
	case 19:
		chan = 4;
		break;
	default:
		chan = 1;
	}

	if (FUNC0(sc->sc_dev, sc->sc_addr, &temp, chan) < 0)
		return (-1);

	return (temp);
}