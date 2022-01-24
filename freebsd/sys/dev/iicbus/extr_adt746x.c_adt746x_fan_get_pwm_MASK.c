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
typedef  int uint16_t ;
struct adt746x_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct adt746x_fan {int pwm_reg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 struct adt746x_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct adt746x_fan *fan)
{
	uint8_t buf, reg;
	uint16_t pwm;
	struct adt746x_softc *sc;

	sc = FUNC1(fan->dev);

	reg = fan->pwm_reg;

	FUNC0(sc->sc_dev, sc->sc_addr, reg, &buf);

	pwm = (buf * 39 / 100) + (buf ? 1 : 0);
	return (pwm);
}