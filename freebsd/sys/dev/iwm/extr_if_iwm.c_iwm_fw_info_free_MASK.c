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
struct iwm_fw_info {int /*<<< orphan*/  img; int /*<<< orphan*/ * fw_fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct iwm_fw_info *fw)
{
	FUNC0(fw->fw_fp, FIRMWARE_UNLOAD);
	fw->fw_fp = NULL;
	FUNC1(fw->img, 0, sizeof(fw->img));
}