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
struct fw_xferlist {int dummy; } ;
struct fw_xfer {int dummy; } ;

/* Variables and functions */
 struct fw_xfer* FUNC0 (struct fw_xferlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_xferlist*) ; 
 struct fw_xfer* FUNC2 (struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_xfer*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC4(struct fw_xferlist *q)
{
	struct fw_xfer *xfer, *next;

	for (xfer = FUNC0(q); xfer != NULL; xfer = next) {
		next = FUNC2(xfer, link);
		FUNC3(xfer);
	}
	FUNC1(q);
}