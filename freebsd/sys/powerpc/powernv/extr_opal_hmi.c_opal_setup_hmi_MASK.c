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
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPAL_CHECK_TOKEN ; 
 int /*<<< orphan*/  OPAL_HANDLE_HMI ; 
 int /*<<< orphan*/  OPAL_HANDLE_HMI2 ; 
 int /*<<< orphan*/  OPAL_HMI_EVT ; 
 scalar_t__ OPAL_TOKEN_PRESENT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  hmi_handler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  opal_hmi_event_handler ; 
 int /*<<< orphan*/  opal_hmi_handler ; 
 int /*<<< orphan*/  opal_hmi_handler2 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	/* This only works for OPAL, so first make sure we have it. */
	if (FUNC2() != 0)
		return;

	if (FUNC1(OPAL_CHECK_TOKEN, OPAL_HANDLE_HMI2) == OPAL_TOKEN_PRESENT)
		hmi_handler = opal_hmi_handler2;
	else if (FUNC1(OPAL_CHECK_TOKEN, OPAL_HANDLE_HMI) == OPAL_TOKEN_PRESENT)
		hmi_handler = opal_hmi_handler;
	else {
		FUNC3("Warning: No OPAL HMI handler found.\n");
		return;
	}

	FUNC0(OPAL_HMI_EVT, opal_hmi_event_handler, NULL,
	    EVENTHANDLER_PRI_ANY);

	if (bootverbose)
		FUNC3("Installed OPAL HMI handler.\n");
}