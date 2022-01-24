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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct bman_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int E_OK ; 
 int /*<<< orphan*/ * FUNC1 (struct bman_softc*) ; 
 struct bman_softc* bman_sc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(t_Handle pool, uint16_t nbufs)
{
	struct bman_softc *sc;
	t_Handle portal;
	int error;

	sc = bman_sc;
	FUNC2();

	portal = FUNC1(sc);
	if (portal == NULL) {
		FUNC3();
		return (EIO);
	}

	error = FUNC0(pool, portal, nbufs);

	FUNC3();

	return ((error == E_OK) ? 0 : EIO);
}