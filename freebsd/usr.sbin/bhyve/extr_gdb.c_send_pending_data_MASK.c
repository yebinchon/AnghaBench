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
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ cur_resp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  write_event ; 

__attribute__((used)) static void
FUNC7(int fd)
{
	ssize_t nwritten;

	if (cur_resp.len == 0) {
		FUNC3(write_event);
		return;
	}
	nwritten = FUNC6(fd, FUNC2(&cur_resp), cur_resp.len);
	if (nwritten == -1) {
		FUNC5("Write to GDB socket failed");
		FUNC0();
	} else {
		FUNC1(&cur_resp, nwritten);
		if (cur_resp.len == 0)
			FUNC3(write_event);
		else
			FUNC4(write_event);
	}
}