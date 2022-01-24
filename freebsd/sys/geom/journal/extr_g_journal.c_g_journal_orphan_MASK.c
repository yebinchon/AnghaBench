#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_journal_softc {int /*<<< orphan*/  sc_name; } ;
struct g_consumer {TYPE_2__* provider; TYPE_1__* geom; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC1 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct g_consumer *cp)
{
	struct g_journal_softc *sc;
	char name[256];
	int error;

	FUNC2();
	sc = cp->geom->softc;
	FUNC3(name, cp->provider->name, sizeof(name));
	FUNC0(0, "Lost provider %s.", name);
	if (sc == NULL)
		return;
	error = FUNC1(sc);
	if (error == 0)
		FUNC0(0, "Journal %s destroyed.", name);
	else {
		FUNC0(0, "Cannot destroy journal %s (error=%d). "
		    "Destroy it manually after last close.", sc->sc_name,
		    error);
	}
}