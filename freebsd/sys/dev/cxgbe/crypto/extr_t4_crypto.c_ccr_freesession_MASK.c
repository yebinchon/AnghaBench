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
struct ccr_softc {int /*<<< orphan*/  lock; } ;
struct ccr_session {scalar_t__ pending; int active; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crypto_session_t ;

/* Variables and functions */
 struct ccr_session* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ccr_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct ccr_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev, crypto_session_t cses)
{
	struct ccr_softc *sc;
	struct ccr_session *s;

	sc = FUNC1(dev);
	s = FUNC0(cses);
	FUNC3(&sc->lock);
	if (s->pending != 0)
		FUNC2(dev,
		    "session %p freed with %d pending requests\n", s,
		    s->pending);
	s->active = false;
	FUNC4(&sc->lock);
}