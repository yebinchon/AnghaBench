#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ req_wwnn; } ;
typedef  TYPE_1__ ocs_xport_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_5__ {TYPE_1__* xport; } ;
typedef  TYPE_2__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,unsigned long long) ; 

__attribute__((used)) static void
FUNC1(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	ocs_xport_t *xport = ocs->xport;

	FUNC0(textbuf, MGMT_MODE_RW, "requested_wwnn", "0x%llx", (unsigned long long)xport->req_wwnn);
}