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
typedef  size_t u_int ;
struct mfi_info_component {int /*<<< orphan*/  build_time; int /*<<< orphan*/  build_date; int /*<<< orphan*/  version; int /*<<< orphan*/  name; } ;
struct mfi_ctrl_info {int pending_image_component_count; struct mfi_info_component* pending_image_component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mfi_info_component*,char*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct mfi_ctrl_info*,int /*<<< orphan*/ *) ; 
 int mfi_unit ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_info_component*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(int fd)
{
	struct mfi_ctrl_info info;
	struct mfi_info_component header;
	int error;
	u_int i;

	if (FUNC1(fd, &info, NULL) < 0) {
		error = errno;
		FUNC5("Failed to get controller info");
		return (error);
	}

	FUNC2("mfi%d Pending Firmware Images:\n", mfi_unit);
	FUNC4(header.name, "Name");
	FUNC4(header.version, "Version");
	FUNC4(header.build_date, "Date");
	FUNC4(header.build_time, "Time");
	FUNC3(&header);
	if (info.pending_image_component_count > 8)
		info.pending_image_component_count = 8;
	for (i = 0; i < info.pending_image_component_count; i++)
		FUNC3(&info.pending_image_component[i]);
	FUNC0(&header, "");
	for (i = 0; i < info.pending_image_component_count; i++)
		FUNC0(&info.pending_image_component[i], "");

	return (0);
}