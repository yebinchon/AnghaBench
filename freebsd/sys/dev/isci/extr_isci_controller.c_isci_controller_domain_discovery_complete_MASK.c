#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  size_t uint8_t ;
struct isci_softc {size_t controller_count; int /*<<< orphan*/  config_hook; int /*<<< orphan*/ * controllers; } ;
struct ISCI_DOMAIN {int index; } ;
struct ISCI_CONTROLLER {int initial_discovery_mask; size_t index; int /*<<< orphan*/  sim; scalar_t__ has_been_scanned; struct isci_softc* isci; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

void FUNC7(
    struct ISCI_CONTROLLER *isci_controller, struct ISCI_DOMAIN *isci_domain)
{
	if (!isci_controller->has_been_scanned)
	{
		/* Controller has not been scanned yet.  We'll clear
		 *  the discovery bit for this domain, then check if all bits
		 *  are now clear.  That would indicate that all domains are
		 *  done with discovery and we can then proceed with initial
		 *  scan.
		 */

		isci_controller->initial_discovery_mask &=
		    ~(1 << isci_domain->index);

		if (isci_controller->initial_discovery_mask == 0) {
			struct isci_softc *driver = isci_controller->isci;
			uint8_t next_index = isci_controller->index + 1;

			isci_controller->has_been_scanned = TRUE;

			/* Unfreeze simq to allow initial scan to proceed. */
			FUNC5(isci_controller->sim, TRUE);

#if __FreeBSD_version < 800000
			/* When driver is loaded after boot, we need to
			 *  explicitly rescan here for versions <8.0, because
			 *  CAM only automatically scans new buses at boot
			 *  time.
			 */
			union ccb *ccb = FUNC3();

			FUNC4(&ccb->ccb_h.path, NULL,
			    FUNC0(isci_controller->sim),
			    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);

			FUNC6(ccb);
#endif

			if (next_index < driver->controller_count) {
				/*  There are more controllers that need to
				 *   start.  So start the next one.
				 */
				FUNC2(
				    &driver->controllers[next_index]);
			}
			else
			{
				/* All controllers have been started and completed discovery.
				 *  Disestablish the config hook while will signal to the
				 *  kernel during boot that it is safe to try to find and
				 *  mount the root partition.
				 */
				FUNC1(
				    &driver->config_hook);
			}
		}
	}
}