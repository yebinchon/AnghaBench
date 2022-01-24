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
struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_GPIO_CTRL ; 
 struct bwi_regwin* FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 

__attribute__((used)) static int
FUNC3(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_regwin *old, *gpio_rw;
	int error;

	gpio_rw = FUNC0(sc);
	error = FUNC2(sc, gpio_rw, &old);
	if (error)
		return error;

	FUNC1(sc, BWI_GPIO_CTRL, 0);

	return FUNC2(sc, old, NULL);
}