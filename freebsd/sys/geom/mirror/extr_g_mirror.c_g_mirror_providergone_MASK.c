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
struct g_provider {struct g_mirror_softc* private; } ;
struct g_mirror_softc {scalar_t__ sc_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_mirror_softc*) ; 

__attribute__((used)) static void
FUNC1(struct g_provider *pp)
{
	struct g_mirror_softc *sc = pp->private;

	if ((--sc->sc_refcnt) == 0)
		FUNC0(sc);
}