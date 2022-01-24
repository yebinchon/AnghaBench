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
struct rt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RT_DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 struct rt_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct rt_softc *sc;

	sc = FUNC1(dev);
	FUNC0(sc, RT_DEBUG_ANY, "shutting down\n");
	FUNC2(sc);

	return (0);
}