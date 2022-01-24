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
struct ip_moptions {int /*<<< orphan*/ * imo_multicast_ifp; int /*<<< orphan*/  imo_head; } ;
struct pfsync_softc {struct ip_moptions sc_imo; } ;
struct in_mfilter {int /*<<< orphan*/  imf_inm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct in_mfilter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct in_mfilter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in_mfilter*) ; 

__attribute__((used)) static void
FUNC4(struct pfsync_softc *sc)
{
	struct ip_moptions *imo = &sc->sc_imo;
	struct in_mfilter *imf;

	while ((imf = FUNC1(&imo->imo_head)) != NULL) {
		FUNC3(&imo->imo_head, imf);
		FUNC0(imf->imf_inm, NULL);
		FUNC2(imf);
	}
	imo->imo_multicast_ifp = NULL;
}