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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void *
FUNC2(void *data)
{
	int i = 0, n = *(int *)data;
	ssize_t	ret = 0;
	char buf[8192] = {0};
	(void) FUNC0(buf, n, sizeof (buf));

	for (i = 0; i < 80; i++) {
		ret = FUNC1(outfd, buf, sizeof (buf));
	}
	return (NULL);
}