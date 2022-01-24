#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ciss_softc {TYPE_4__* ciss_cfg; TYPE_3__** ciss_physical; } ;
struct TYPE_5__ {int /*<<< orphan*/  big_physical_drive_number; } ;
struct TYPE_6__ {TYPE_1__ drive; } ;
struct ciss_notify {int subclass; int /*<<< orphan*/  detail; TYPE_2__ data; } ;
struct ciss_lun_report {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  max_physical_supported; } ;
struct TYPE_7__ {int /*<<< orphan*/  cp_online; } ;

/* Variables and functions */
 int FUNC0 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CISS_MALLOC_CLASS ; 
#define  CISS_NOTIFY_HOTPLUG_NONDISK 129 
#define  CISS_NOTIFY_HOTPLUG_PHYSICAL 128 
 int /*<<< orphan*/  CISS_OPCODE_REPORT_PHYSICAL_LUNS ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,struct ciss_lun_report*) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,char*,...) ; 
 struct ciss_lun_report* FUNC4 (struct ciss_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_lun_report*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ciss_softc *sc, struct ciss_notify *cn)
{
    struct ciss_lun_report *cll = NULL;
    int bus, target;

    switch (cn->subclass) {
    case CISS_NOTIFY_HOTPLUG_PHYSICAL:
    case CISS_NOTIFY_HOTPLUG_NONDISK:
	bus = FUNC0(sc, cn->data.drive.big_physical_drive_number);
	target =
	    FUNC1(sc, cn->data.drive.big_physical_drive_number);

	if (cn->detail == 0) {
	    /*
	     * Mark the device offline so that it'll start producing selection
	     * timeouts to the upper layer.
	     */
	    if ((bus >= 0) && (target >= 0))
		sc->ciss_physical[bus][target].cp_online = 0;
	} else {
	    /*
	     * Rescan the physical lun list for new items
	     */
	    cll = FUNC4(sc, CISS_OPCODE_REPORT_PHYSICAL_LUNS,
				   sc->ciss_cfg->max_physical_supported);
	    if (cll == NULL) {
		FUNC3(sc, "Warning, cannot get physical lun list\n");
		break;
	    }
	    FUNC2(sc, cll);
	}
	break;

    default:
	FUNC3(sc, "Unknown hotplug event %d\n", cn->subclass);
	return;
    }

    if (cll != NULL)
	FUNC5(cll, CISS_MALLOC_CLASS);
}