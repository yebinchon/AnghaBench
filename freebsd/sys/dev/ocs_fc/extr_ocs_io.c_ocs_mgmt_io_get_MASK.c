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
typedef  int /*<<< orphan*/  qualifier ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_2__ {int instance_index; int /*<<< orphan*/  xfer_req; int /*<<< orphan*/  exp_xfer_len; int /*<<< orphan*/  auto_resp; int /*<<< orphan*/  transferred; int /*<<< orphan*/  tag; int /*<<< orphan*/  hw_tag; int /*<<< orphan*/  tgt_task_tag; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  display_name; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int) ; 
 int FUNC6 (char*) ; 

int
FUNC7(ocs_textbuf_t *textbuf, char *parent, char *name, void *object)
{
	char qualifier[80];
	int retval = -1;
	ocs_io_t *io = (ocs_io_t *) object;

	FUNC5(qualifier, sizeof(qualifier), "%s/io[%d]", parent, io->instance_index);

	/* If it doesn't start with my qualifier I don't know what to do with it */
	if (FUNC4(name, qualifier, FUNC6(qualifier)) == 0) {
		char *unqualified_name = name + FUNC6(qualifier) +1;

		/* See if it's a value I can supply */
		if (FUNC3(unqualified_name, "display_name") == 0) {
			FUNC2(textbuf, MGMT_MODE_RD, "display_name", io->display_name);
			retval = 0;
		} else if (FUNC3(unqualified_name, "init_task_tag") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "init_task_tag", "0x%x", io->init_task_tag);
			retval = 0;
		} else if (FUNC3(unqualified_name, "tgt_task_tag") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "tgt_task_tag", "0x%x", io->tgt_task_tag);
			retval = 0;
		} else if (FUNC3(unqualified_name, "hw_tag") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "hw_tag", "0x%x", io->hw_tag);
			retval = 0;
		} else if (FUNC3(unqualified_name, "tag") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "tag", "0x%x", io->tag);
			retval = 0;
		} else if (FUNC3(unqualified_name, "transferred") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "transferred", "%zu", io->transferred);
			retval = 0;
		} else if (FUNC3(unqualified_name, "auto_resp") == 0) {
			FUNC0(textbuf, MGMT_MODE_RD, "auto_resp", io->auto_resp);
			retval = 0;
		} else if (FUNC3(unqualified_name, "exp_xfer_len") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "exp_xfer_len", "%d", io->exp_xfer_len);
			retval = 0;
		} else if (FUNC3(unqualified_name, "xfer_req") == 0) {
			FUNC1(textbuf, MGMT_MODE_RD, "xfer_req", "%d", io->xfer_req);
			retval = 0;
		}
	}

	return retval;
}