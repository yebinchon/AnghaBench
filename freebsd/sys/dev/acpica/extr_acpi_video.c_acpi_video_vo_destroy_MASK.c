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
struct acpi_video_output_queue {int dummy; } ;
struct acpi_video_output {int adr; int /*<<< orphan*/ * vo_levels; int /*<<< orphan*/  handle; int /*<<< orphan*/  vo_sysctl_ctx; int /*<<< orphan*/ * vo_sysctl_tree; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DOD_DEVID_EXT 131 
#define  DOD_DEVID_INTDFP 130 
 int DOD_DEVID_MASK ; 
#define  DOD_DEVID_MONITOR 129 
#define  DOD_DEVID_TV 128 
 int /*<<< orphan*/  M_ACPIVIDEO ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_video_output_queue*,struct acpi_video_output*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_video_output ; 
 int /*<<< orphan*/  acpi_video_vo_notify_handler ; 
 struct acpi_video_output_queue crt_units ; 
 struct acpi_video_output_queue ext_units ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_video_output*,int /*<<< orphan*/ ) ; 
 struct acpi_video_output_queue lcd_units ; 
 struct acpi_video_output_queue other_units ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct acpi_video_output_queue tv_units ; 
 int /*<<< orphan*/  video ; 
 TYPE_1__ vo_unit ; 

__attribute__((used)) static void
FUNC6(struct acpi_video_output *vo)
{
	struct acpi_video_output_queue *voqh;

	FUNC0(video);
	if (vo->vo_sysctl_tree != NULL) {
		vo->vo_sysctl_tree = NULL;
		FUNC5(&vo->vo_sysctl_ctx);
	}
	if (vo->vo_levels != NULL) {
		FUNC2(vo->handle, ACPI_DEVICE_NOTIFY,
		    acpi_video_vo_notify_handler);
		FUNC1(vo->vo_levels);
	}

	switch (vo->adr & DOD_DEVID_MASK) {
	case DOD_DEVID_MONITOR:
		voqh = &crt_units;
		break;
	case DOD_DEVID_TV:
		voqh = &tv_units;
		break;
	case DOD_DEVID_EXT:
		voqh = &ext_units;
		break;
	case DOD_DEVID_INTDFP:
		voqh = &lcd_units;
		break;
	default:
		voqh = &other_units;
	}
	FUNC3(voqh, vo, acpi_video_output, vo_unit.next);
	FUNC4(vo, M_ACPIVIDEO);
}