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

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_OPAQUE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw_fdt ; 
 int /*<<< orphan*/ * fdtp ; 
 int /*<<< orphan*/  sysctl_handle_dtb ; 

__attribute__((used)) static void
FUNC2(void *arg)
{

	/* If there is no FDT registered, skip adding the sysctl */
	if (fdtp == NULL)
		return;

	FUNC0(NULL, FUNC1(_hw_fdt), OID_AUTO, "dtb",
	    CTLTYPE_OPAQUE | CTLFLAG_RD, NULL, 0, sysctl_handle_dtb, "",
	    "Device Tree Blob");
}