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
struct ledsc {struct ledsc* name; int /*<<< orphan*/ * spec; int /*<<< orphan*/  unit; int /*<<< orphan*/ * ptr; } ;
struct cdev {struct ledsc* si_drv1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ledsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LED ; 
 int /*<<< orphan*/  blinkers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ledsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_ch ; 
 int /*<<< orphan*/  led_list ; 
 int /*<<< orphan*/  led_mtx ; 
 int /*<<< orphan*/  led_sx ; 
 int /*<<< orphan*/  led_unit ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct cdev *dev)
{
	struct ledsc *sc;

	FUNC6(&led_mtx);
	sc = dev->si_drv1;
	dev->si_drv1 = NULL;
	if (sc->ptr != NULL)
		blinkers--;
	FUNC1(sc, list);
	if (FUNC0(&led_list))
		FUNC2(&led_ch);
	FUNC7(&led_mtx);

	FUNC9(&led_sx);
	FUNC5(led_unit, sc->unit);
	FUNC3(dev);
	if (sc->spec != NULL)
		FUNC8(sc->spec);
	FUNC4(sc->name, M_LED);
	FUNC4(sc, M_LED);
	FUNC10(&led_sx);
}