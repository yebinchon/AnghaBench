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
typedef  int /*<<< orphan*/  ocs_textbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC1(ocs_textbuf_t *textbuf, void *object)
{

	/* Readonly values */
	FUNC0(textbuf, MGMT_MODE_RD, "display_name");
	FUNC0(textbuf, MGMT_MODE_RD, "init_task_tag");
	FUNC0(textbuf, MGMT_MODE_RD, "tag");
	FUNC0(textbuf, MGMT_MODE_RD, "transferred");
	FUNC0(textbuf, MGMT_MODE_RD, "auto_resp");
	FUNC0(textbuf, MGMT_MODE_RD, "exp_xfer_len");
	FUNC0(textbuf, MGMT_MODE_RD, "xfer_req");
}