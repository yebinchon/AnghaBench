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
typedef  scalar_t__ uint64_t ;
struct schizo_softc {scalar_t__ sc_mode; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 scalar_t__ FUNC0 (struct schizo_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ SCHIZO_MODE_TOM ; 
 int /*<<< orphan*/  STX_CTRL_BUS_ERRLOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct schizo_softc *sc = arg;
	uint64_t errlog;

	errlog = FUNC0(sc, STX_CTRL_BUS_ERRLOG);
	FUNC2("%s: %s error %#llx", FUNC1(sc->sc_dev),
	    sc->sc_mode == SCHIZO_MODE_TOM ? "JBus" : "Safari",
	    (unsigned long long)errlog);
	return (FILTER_HANDLED);
}