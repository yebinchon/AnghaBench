#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  out_line; int /*<<< orphan*/  out_name; } ;
struct TYPE_4__ {TYPE_1__ myutmp; int /*<<< orphan*/  myhost; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (void const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(const void *u1, const void *u2)
{
	int rc;

	rc = FUNC2(FUNC0(u1)->myutmp.out_name, FUNC0(u2)->myutmp.out_name,
	    sizeof(FUNC0(u2)->myutmp.out_name));
	if (rc != 0)
		return (rc);
	rc = FUNC1(FUNC0(u1)->myhost, FUNC0(u2)->myhost);
	if (rc != 0)
		return (rc);
	return (FUNC2(FUNC0(u1)->myutmp.out_line,
	    FUNC0(u2)->myutmp.out_line, sizeof(FUNC0(u2)->myutmp.out_line)));
}