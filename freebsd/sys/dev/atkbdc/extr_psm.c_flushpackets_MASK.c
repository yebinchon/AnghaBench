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
struct psm_softc {int /*<<< orphan*/  pqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct psm_softc*) ; 

__attribute__((used)) static void
FUNC2(struct psm_softc *sc)
{

	FUNC1(sc);
	FUNC0(&sc->pqueue, sizeof(sc->pqueue));
}