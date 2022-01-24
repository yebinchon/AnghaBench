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
struct acpi_video_output {int* vo_levels; int vo_numlevels; int vo_fullpower; int vo_economy; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_video_output*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t BCL_ECONOMY ; 
 size_t BCL_FULLPOWER ; 
 scalar_t__ FUNC5 (struct acpi_video_output*,int) ; 
 int /*<<< orphan*/  acpi_video_vo_notify_handler ; 
 int /*<<< orphan*/  video_output ; 
 int FUNC6 (int /*<<< orphan*/ ,int**) ; 

__attribute__((used)) static void
FUNC7(struct acpi_video_output *vo, ACPI_HANDLE handle)
{

	FUNC0(video_output);
	if (vo->vo_levels != NULL) {
		FUNC4(vo->handle, ACPI_DEVICE_NOTIFY,
		    acpi_video_vo_notify_handler);
		FUNC3(vo->vo_levels);
		vo->vo_levels = NULL;
	}
	vo->handle = handle;
	vo->vo_numlevels = FUNC6(handle, &vo->vo_levels);
	if (vo->vo_numlevels >= 2) {
		if (vo->vo_fullpower == -1 ||
		    FUNC5(vo, vo->vo_fullpower) != 0) {
			/* XXX - can't deal with rebinding... */
			vo->vo_fullpower = vo->vo_levels[BCL_FULLPOWER];
		}
		if (vo->vo_economy == -1 ||
		    FUNC5(vo, vo->vo_economy) != 0) {
			/* XXX - see above. */
			vo->vo_economy = vo->vo_levels[BCL_ECONOMY];
		}
		FUNC2(handle, ACPI_DEVICE_NOTIFY,
		    acpi_video_vo_notify_handler, vo);
	}
	FUNC1(video_output);
}