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
struct iwn_softc {int /*<<< orphan*/  schedsz; int /*<<< orphan*/  sched; int /*<<< orphan*/  sched_dma; } ;

/* Variables and functions */
 int FUNC0 (struct iwn_softc*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct iwn_softc *sc)
{
	/* TX scheduler rings must be aligned on a 1KB boundary. */
	return FUNC0(sc, &sc->sched_dma, (void **)&sc->sched,
	    sc->schedsz, 1024);
}