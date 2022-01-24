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
struct hn_softc {scalar_t__ hn_vf_rdytick; int /*<<< orphan*/ * hn_vf_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  hn_xpnt_vf ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static bool
FUNC2(struct hn_softc *sc)
{

	FUNC0(sc);

	if (!hn_xpnt_vf || sc->hn_vf_ifp == NULL)
		return (false);

	if (sc->hn_vf_rdytick == 0)
		return (true);

	if (sc->hn_vf_rdytick > ticks)
		return (false);

	/* Mark VF as ready. */
	FUNC1(sc);
	return (true);
}