#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_3__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  OCS_HW_HW_REV2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	uint32_t value;

	FUNC0(&ocs->hw, OCS_HW_HW_REV2, &value);

	FUNC1(textbuf, MGMT_MODE_RD, "hw_rev2", "%u", value);
}