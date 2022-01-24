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
struct cs4231_softc {int sc_flags; } ;
struct cs4231_channel {struct cs4231_softc* parent; } ;

/* Variables and functions */
 int CS4231_SBUS ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*,struct cs4231_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*,struct cs4231_channel*) ; 

__attribute__((used)) static void
FUNC2(struct cs4231_channel *ch)
{
	struct cs4231_softc *sc;

	sc = ch->parent;
	if ((sc->sc_flags & CS4231_SBUS) != 0)
		FUNC0(sc, ch);
	else
		FUNC1(sc, ch);
}