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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct sbbc_softc {int /*<<< orphan*/  sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct sbbc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ sbbc_toddata ; 
 int /*<<< orphan*/  tod_skew ; 
 int /*<<< orphan*/  tod_time ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct timespec *ts)
{
	struct sbbc_softc *sc;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;

	sc = FUNC2(dev);
	bst = FUNC4(sc->sc_res);
	bsh = FUNC3(sc->sc_res);

	ts->tv_sec = FUNC0(sbbc_toddata + FUNC1(tod_time)) +
	    FUNC0(sbbc_toddata + FUNC1(tod_skew));
	ts->tv_nsec = 0;
	return (0);
}