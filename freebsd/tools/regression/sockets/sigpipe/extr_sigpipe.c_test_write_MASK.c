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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 

__attribute__((used)) static void
FUNC3(const char *testname, int sock)
{
	ssize_t len;
	char ch;

	ch = 0;
	len = FUNC2(sock, &ch, sizeof(ch));
	if (len < 0) {
		if (errno == EPIPE)
			return;
		FUNC0(-1, "%s: write", testname);
	}
	FUNC1(-1, "%s: write: returned %zd", testname, len);
}