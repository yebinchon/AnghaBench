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
struct iwi_softc {int sc_linkqual_valid; int /*<<< orphan*/  sc_linkqual; } ;
struct iwi_notif_link_quality {int dummy; } ;
struct iwi_notif {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iwi_notif_link_quality*,int) ; 

__attribute__((used)) static void
FUNC3(struct iwi_softc *sc, struct iwi_notif *notif)
{
	struct iwi_notif_link_quality *lq;
	int len;

	len = FUNC1(notif->len);

	FUNC0(5, ("Notification (%u) - len=%d, sizeof=%zu\n",
	    notif->type,
	    len,
	    sizeof(struct iwi_notif_link_quality)
	    ));

	/* enforce length */
	if (len != sizeof(struct iwi_notif_link_quality)) {
		FUNC0(5, ("Notification: (%u) too short (%d)\n",
		    notif->type,
		    len));
		return;
	}

	lq = (struct iwi_notif_link_quality *)(notif + 1);
	FUNC2(&sc->sc_linkqual, lq, sizeof(sc->sc_linkqual));
	sc->sc_linkqual_valid = 1;
}