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
struct ocs_softc {int /*<<< orphan*/  ramlog; int /*<<< orphan*/  hw_war_version; scalar_t__ config_tgt; scalar_t__ enable_tgt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  M_OCS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocs_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocs_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocs_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ocs_softc	*ocs;

	ocs = (struct ocs_softc *)FUNC0(dev);
	if (!ocs) {
		FUNC1(dev, "no driver context?!?\n");
		return -1;
	}

	if (ocs->config_tgt && ocs->enable_tgt) {
		FUNC1(dev, "can't detach with target mode enabled\n");
		return EBUSY;
	}

	FUNC4(ocs);

	/*
	 * Workaround for OCS SCSI Transport quirk.
	 *
	 * CTL requires that target mode is disabled prior to unloading the
	 * driver (ie ocs->enable_tgt = FALSE), but once the target is disabled,
	 * the transport will not call ocs_scsi_tgt_del_device() which deallocates
	 * CAM resources. The workaround is to explicitly make the call here.
	 */
	if (ocs->config_tgt)
		FUNC8(ocs);
        
	/* free strdup created buffer.*/
	FUNC2(ocs->hw_war_version, M_OCS);

	FUNC5(ocs);

	FUNC3(ocs);

	FUNC6(ocs, ocs->ramlog);

	FUNC7(ocs);

	return 0;
}