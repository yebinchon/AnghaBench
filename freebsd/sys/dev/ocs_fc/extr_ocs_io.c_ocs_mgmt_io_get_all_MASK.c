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
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_2__ {int /*<<< orphan*/  xfer_req; int /*<<< orphan*/  exp_xfer_len; int /*<<< orphan*/  auto_resp; int /*<<< orphan*/  transferred; int /*<<< orphan*/  tag; int /*<<< orphan*/  hw_tag; int /*<<< orphan*/  tgt_task_tag; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  display_name; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(ocs_textbuf_t *textbuf, void *object)
{
	ocs_io_t *io = (ocs_io_t *) object;

	FUNC2(textbuf, MGMT_MODE_RD, "display_name", io->display_name);
	FUNC1(textbuf, MGMT_MODE_RD, "init_task_tag", "0x%x", io->init_task_tag);
	FUNC1(textbuf, MGMT_MODE_RD, "tgt_task_tag", "0x%x", io->tgt_task_tag);
	FUNC1(textbuf, MGMT_MODE_RD, "hw_tag", "0x%x", io->hw_tag);
	FUNC1(textbuf, MGMT_MODE_RD, "tag", "0x%x", io->tag);
	FUNC1(textbuf, MGMT_MODE_RD, "transferred", "%zu", io->transferred);
	FUNC0(textbuf, MGMT_MODE_RD, "auto_resp", io->auto_resp);
	FUNC1(textbuf, MGMT_MODE_RD, "exp_xfer_len", "%d", io->exp_xfer_len);
	FUNC1(textbuf, MGMT_MODE_RD, "xfer_req", "%d", io->xfer_req);

}