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
typedef  int /*<<< orphan*/ * t_Handle ;
struct bman_softc {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct bman_softc*) ; 
 struct bman_softc* bman_sc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void *
FUNC4(t_Handle pool)
{
	struct bman_softc *sc;
	t_Handle portal;
	void *buffer;

	sc = bman_sc;
	FUNC2();

	portal = FUNC1(sc);
	if (portal == NULL) {
		FUNC3();
		return (NULL);
	}

	buffer = FUNC0(pool, portal);

	FUNC3();

	return (buffer);
}