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
struct iwm_softc {int /*<<< orphan*/  sc_notif_wait; } ;
struct iwm_notification_wait {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_DEBUG_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
#define  IWM_SCAN_COMPLETE_UMAC 129 
#define  IWM_SCAN_OFFLOAD_COMPLETE 128 
 int /*<<< orphan*/  IWM_UCODE_TLV_CAPA_UMAC_SCAN ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iwm_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iwm_softc*) ; 
 int FUNC6 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct iwm_notification_wait*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct iwm_notification_wait*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 

int
FUNC10(struct iwm_softc *sc)
{
	struct iwm_notification_wait wait_scan_done;
	static const uint16_t scan_done_notif[] = { IWM_SCAN_COMPLETE_UMAC,
						   IWM_SCAN_OFFLOAD_COMPLETE, };
	int ret;

	FUNC4(sc->sc_notif_wait, &wait_scan_done,
				   scan_done_notif, FUNC9(scan_done_notif),
				   NULL, NULL);

	FUNC0(sc, IWM_DEBUG_SCAN, "Preparing to stop scan\n");

	if (FUNC3(sc, IWM_UCODE_TLV_CAPA_UMAC_SCAN))
		ret = FUNC6(sc);
	else
		ret = FUNC5(sc);

	if (ret) {
		FUNC0(sc, IWM_DEBUG_SCAN, "couldn't stop scan\n");
		FUNC7(sc->sc_notif_wait, &wait_scan_done);
		return ret;
	}

	FUNC2(sc);
	ret = FUNC8(sc->sc_notif_wait, &wait_scan_done, hz);
	FUNC1(sc);

	return ret;
}