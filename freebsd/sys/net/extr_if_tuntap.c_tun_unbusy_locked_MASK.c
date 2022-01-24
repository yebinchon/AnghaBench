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
struct tuntap_softc {scalar_t__ tun_busy; int /*<<< orphan*/  tun_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct tuntap_softc *tp)
{

	FUNC1(tp);
	FUNC0(tp->tun_busy != 0, ("tun_unbusy: called for non-busy tunnel"));

	--tp->tun_busy;
	/* Wake up anything that may be waiting on our busy tunnel. */
	if (tp->tun_busy == 0)
		FUNC2(&tp->tun_cv);
}