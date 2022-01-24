#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_6__ {char* indicator; char* state; char* reqtag; char* abort_reqtag; char* abort_in_progress; char* type; char* xbusy; char* def_sgl_count; char* n_sge; int /*<<< orphan*/ * ovfl_io; int /*<<< orphan*/ * ovfl_sgl; int /*<<< orphan*/  wqe_link; TYPE_1__* wq; int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ ocs_hw_io_t ;
struct TYPE_5__ {int instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ocs_textbuf_t *textbuf, ocs_hw_io_t *io)
{
	FUNC0(io);

	FUNC2(textbuf, "hw_io", io->indicator);

	FUNC3(textbuf, "state", "%d", io->state);
	FUNC3(textbuf, "xri", "0x%x", io->indicator);
	FUNC3(textbuf, "tag", "0x%x", io->reqtag);
	FUNC3(textbuf, "abort_reqtag", "0x%x", io->abort_reqtag);
	FUNC3(textbuf, "ref_count", "%d", FUNC5(&io->ref));

	/* just to make it obvious, display abort bit from tag */
	FUNC3(textbuf, "abort", "0x%x", io->abort_in_progress);
	FUNC3(textbuf, "wq_index", "%d", (io->wq == NULL ? 0xffff : io->wq->instance));
	FUNC3(textbuf, "type", "%d", io->type);
	FUNC3(textbuf, "xbusy", "%d", io->xbusy);
	FUNC3(textbuf, "active_wqe_link", "%d", FUNC4(&io->wqe_link));
	FUNC3(textbuf, "def_sgl_count", "%d", io->def_sgl_count);
	FUNC3(textbuf, "n_sge", "%d", io->n_sge);
	FUNC3(textbuf, "has_ovfl_sgl", "%s", (io->ovfl_sgl != NULL ? "TRUE" : "FALSE"));
	FUNC3(textbuf, "has_ovfl_io", "%s", (io->ovfl_io != NULL ? "TRUE" : "FALSE"));

	FUNC1(textbuf, "hw_io", io->indicator);
}