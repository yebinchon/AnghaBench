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
struct ledsc {struct cdev* dev; void* private; int /*<<< orphan*/  (* func ) (void*,int) ;int /*<<< orphan*/  unit; int /*<<< orphan*/  name; } ;
struct cdev {struct ledsc* si_drv1; } ;
typedef  int /*<<< orphan*/  (* led_t ) (void*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ledsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LED ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_cdevsw ; 
 int /*<<< orphan*/  led_list ; 
 int /*<<< orphan*/  led_mtx ; 
 int /*<<< orphan*/  led_sx ; 
 int /*<<< orphan*/  led_unit ; 
 int /*<<< orphan*/  list ; 
 struct cdev* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 struct ledsc* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct cdev *
FUNC10(led_t *func, void *priv, char const *name, int state)
{
	struct ledsc	*sc;

	sc = FUNC3(sizeof *sc, M_LED, M_WAITOK | M_ZERO);

	FUNC8(&led_sx);
	sc->name = FUNC6(name, M_LED);
	sc->unit = FUNC1(led_unit);
	sc->private = priv;
	sc->func = *func;
	sc->dev = FUNC2(&led_cdevsw, sc->unit,
	    UID_ROOT, GID_WHEEL, 0600, "led/%s", name);
	FUNC9(&led_sx);

	FUNC4(&led_mtx);
	sc->dev->si_drv1 = sc;
	FUNC0(&led_list, sc, list);
	if (state != -1)
		sc->func(sc->private, state != 0);
	FUNC5(&led_mtx);

	return (sc->dev);
}