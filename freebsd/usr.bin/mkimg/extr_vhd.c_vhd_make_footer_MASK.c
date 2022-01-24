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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  cylinders; } ;
struct vhd_footer {int /*<<< orphan*/  checksum; int /*<<< orphan*/  id; int /*<<< orphan*/  disk_type; TYPE_1__ geometry; int /*<<< orphan*/  current_size; int /*<<< orphan*/  original_size; int /*<<< orphan*/  creator_os; int /*<<< orphan*/  creator_version; int /*<<< orphan*/  creator_tool; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  version; int /*<<< orphan*/  features; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  mkimg_uuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  VHD_CREATOR_OS ; 
 int /*<<< orphan*/  VHD_CREATOR_TOOL ; 
 int /*<<< orphan*/  VHD_CREATOR_VERSION ; 
 int /*<<< orphan*/  VHD_FEATURES_RESERVED ; 
 int /*<<< orphan*/  VHD_FOOTER_COOKIE ; 
 int /*<<< orphan*/  VHD_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vhd_footer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vhd_footer*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(struct vhd_footer *footer, uint64_t image_size,
    uint32_t disk_type, uint64_t data_offset)
{
	mkimg_uuid_t id;

	FUNC3(footer, 0, sizeof(*footer));
	FUNC2(&footer->cookie, VHD_FOOTER_COOKIE);
	FUNC1(&footer->features, VHD_FEATURES_RESERVED);
	FUNC1(&footer->version, VHD_VERSION);
	FUNC2(&footer->data_offset, data_offset);
	FUNC1(&footer->timestamp, FUNC8());
	FUNC1(&footer->creator_tool, VHD_CREATOR_TOOL);
	FUNC1(&footer->creator_version, VHD_CREATOR_VERSION);
	FUNC1(&footer->creator_os, VHD_CREATOR_OS);
	FUNC2(&footer->original_size, image_size);
	FUNC2(&footer->current_size, image_size);
	FUNC7(image_size, &footer->geometry);
	FUNC0(&footer->geometry.cylinders, footer->geometry.cylinders);
	FUNC1(&footer->disk_type, disk_type);
	FUNC4(&id);
	FUNC5(&footer->id, &id);
	FUNC1(&footer->checksum, FUNC6(footer, sizeof(*footer)));
}