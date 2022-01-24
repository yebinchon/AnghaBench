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
struct TYPE_2__ {int /*<<< orphan*/  macaddr; } ;
struct jz4780_efuse_softc {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  macstr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct jz4780_efuse_softc *sc)
{
	char macstr[sizeof("xx:xx:xx:xx:xx:xx")];

	/*
	 * Update hint in kernel env only if none is available yet.
	 * It is quite possible one was set by command line already.
	 */
	if (FUNC0("hint.dme.0.macaddr") == NULL) {
		FUNC2(macstr, sizeof(macstr), "%6D",
		    sc->data.macaddr, ":");
		FUNC1("hint.dme.0.macaddr", macstr);
	}
}