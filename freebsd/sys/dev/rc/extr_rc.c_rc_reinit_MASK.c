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
struct rc_softc {struct rc_chans* sc_channels; } ;
struct rc_chans {TYPE_1__* rc_tp; } ;
struct TYPE_2__ {int /*<<< orphan*/  t_termios; } ;

/* Variables and functions */
 int CD180_NCHAN ; 
 int /*<<< orphan*/  RC_FAKEID ; 
 int /*<<< orphan*/  FUNC0 (struct rc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct rc_softc *sc)
{
	struct rc_chans *rc;
	int i;

	FUNC0(sc, RC_FAKEID);
	rc = sc->sc_channels;
	for (i = 0; i < CD180_NCHAN; i++, rc++)
		(void) FUNC1(rc->rc_tp, &rc->rc_tp->t_termios);
}