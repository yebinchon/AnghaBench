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
struct knote {scalar_t__ kn_hook; } ;
struct cyapa_softc {scalar_t__ data_signal; int /*<<< orphan*/  rfifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*) ; 
 scalar_t__ FUNC2 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	struct cyapa_softc *sc;
	int ready;

	sc = (struct cyapa_softc *)kn->kn_hook;

	FUNC0(sc);
	ready = FUNC2(sc, &sc->rfifo) || sc->data_signal;
	FUNC1(sc);

	return (ready);
}