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
struct child_process {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC1 (struct child_process*) ; 
 scalar_t__ FUNC2 (struct child_process*) ; 

int FUNC3(struct child_process *conn)
{
	int code;
	if (!conn || FUNC2(conn))
		return 0;

	code = FUNC0(conn);
	FUNC1(conn);
	return code;
}