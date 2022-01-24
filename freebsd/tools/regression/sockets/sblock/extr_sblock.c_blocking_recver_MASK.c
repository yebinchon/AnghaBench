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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ interrupted ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int fd)
{
	ssize_t len;
	char ch;

	len = FUNC2(fd, &ch, sizeof(ch), 0);
	if (len < 0)
		FUNC0(-1, "FAIL: blocking_recver: recv");
	if (len == 0)
		FUNC1(-1, "FAIL: blocking_recver: recv: eof");
	if (len != 1)
		FUNC1(-1, "FAIL: blocking_recver: recv: %zd bytes", len);
	if (interrupted)
		FUNC1(-1, "FAIL: blocking_recver: interrupted wrong pid");
}