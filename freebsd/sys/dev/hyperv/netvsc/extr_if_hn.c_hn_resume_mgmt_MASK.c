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
struct hn_softc {int hn_link_flags; int /*<<< orphan*/  hn_mgmt_taskq0; int /*<<< orphan*/  hn_mgmt_taskq; } ;

/* Variables and functions */
 int HN_LINK_FLAG_NETCHG ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 

__attribute__((used)) static void
FUNC2(struct hn_softc *sc)
{

	sc->hn_mgmt_taskq = sc->hn_mgmt_taskq0;

	/*
	 * Kick off network change detection, if it was pending.
	 * If no network change was pending, start link status
	 * checks, which is more lightweight than network change
	 * detection.
	 */
	if (sc->hn_link_flags & HN_LINK_FLAG_NETCHG)
		FUNC0(sc);
	else
		FUNC1(sc);
}