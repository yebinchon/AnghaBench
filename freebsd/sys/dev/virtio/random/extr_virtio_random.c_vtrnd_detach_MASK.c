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
struct vtrnd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  C_HARDCLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct vtrnd_softc* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vtrnd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_vtrnd_softc ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  random_vtrnd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct vtrnd_softc *sc;

	sc = FUNC3(dev);
	FUNC0(
	    FUNC1(&g_vtrnd_softc, memory_order_acquire) == sc,
	    ("only one global instance at a time"));

	FUNC5(&random_vtrnd);
	FUNC2(&g_vtrnd_softc, NULL, memory_order_release);

	/*
	 * Unfortunately, deregister does not guarantee our source callback
	 * will not be invoked after it returns.  Use a kludge to prevent some,
	 * but not all, possible races.
	 */
	FUNC6(&g_vtrnd_softc, 0, "vtrnddet", FUNC4(50), 0, C_HARDCLOCK);

	return (0);
}