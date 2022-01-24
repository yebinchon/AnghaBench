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
typedef  int /*<<< orphan*/ * device_t ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_NOTIFY_DEVICE_CHECK 129 
#define  ACPI_NOTIFY_EJECT_REQUEST 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(ACPI_HANDLE h, UINT32 notify, void *context)
{
	device_t child, dev;
	ACPI_STATUS status;
	int error;

	dev = context;

	switch (notify) {
	case ACPI_NOTIFY_DEVICE_CHECK:
		FUNC9(&Giant);
		FUNC2(dev);
		FUNC10(&Giant);
		break;
	case ACPI_NOTIFY_EJECT_REQUEST:
		child = FUNC4(h);
		if (child == NULL) {
			FUNC8(dev, "no device to eject for %s\n",
			    FUNC5(h));
			return;
		}
		FUNC9(&Giant);
		error = FUNC6(child);
		if (error) {
			FUNC10(&Giant);
			FUNC8(dev, "failed to detach %s: %d\n",
			    FUNC7(child), error);
			return;
		}
		status = FUNC3(h, "_EJ0", 1);
		if (FUNC0(status)) {
			FUNC10(&Giant);
			FUNC8(dev, "failed to eject %s: %s\n",
			    FUNC5(h), FUNC1(status));
			return;
		}
		FUNC2(dev);
		FUNC10(&Giant);
		break;
	default:
		FUNC8(dev, "unknown notify %#x for %s\n", notify,
		    FUNC5(h));
		break;
	}
}