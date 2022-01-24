#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_4__ {int /*<<< orphan*/  els_active; int /*<<< orphan*/  els_pend; int /*<<< orphan*/  els_evtdepth; int /*<<< orphan*/  els_req_free; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(ocs_textbuf_t *textbuf, ocs_io_t *els)
{
	FUNC2(textbuf, "els", -1);
	FUNC3(textbuf, "req_free", "%d", els->els_req_free);
	FUNC3(textbuf, "evtdepth", "%d", els->els_evtdepth);
	FUNC3(textbuf, "pend", "%d", els->els_pend);
	FUNC3(textbuf, "active", "%d", els->els_active);
	FUNC1(textbuf, els);
	FUNC0(textbuf, "els", -1);
}