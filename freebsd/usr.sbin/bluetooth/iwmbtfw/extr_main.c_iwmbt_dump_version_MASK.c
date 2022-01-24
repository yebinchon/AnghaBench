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
struct iwmbt_version {int /*<<< orphan*/  fw_patch_num; int /*<<< orphan*/  fw_build_yy; int /*<<< orphan*/  fw_build_ww; int /*<<< orphan*/  fw_build_num; int /*<<< orphan*/  fw_revision; int /*<<< orphan*/  fw_variant; int /*<<< orphan*/  hw_revision; int /*<<< orphan*/  hw_variant; int /*<<< orphan*/  hw_platform; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct iwmbt_version *ver)
{
	FUNC0("status       0x%02x", ver->status);
	FUNC0("hw_platform  0x%02x", ver->hw_platform);
	FUNC0("hw_variant   0x%02x", ver->hw_variant);
	FUNC0("hw_revision  0x%02x", ver->hw_revision);
	FUNC0("fw_variant   0x%02x", ver->fw_variant);
	FUNC0("fw_revision  0x%02x", ver->fw_revision);
	FUNC0("fw_build_num 0x%02x", ver->fw_build_num);
	FUNC0("fw_build_ww  0x%02x", ver->fw_build_ww);
	FUNC0("fw_build_yy  0x%02x", ver->fw_build_yy);
	FUNC0("fw_patch_num 0x%02x", ver->fw_patch_num);
}