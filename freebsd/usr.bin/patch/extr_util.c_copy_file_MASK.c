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

/* Variables and functions */
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  buf_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC5(const char *from, const char *to)
{
	int	tofd, fromfd;
	ssize_t	i;

	tofd = FUNC1(to, O_CREAT|O_TRUNC|O_WRONLY, 0666);
	if (tofd < 0)
		return -1;
	fromfd = FUNC1(from, O_RDONLY, 0);
	if (fromfd < 0)
		FUNC2("internal error, can't reopen %s", from);
	while ((i = FUNC3(fromfd, buf, buf_size)) > 0)
		if (FUNC4(tofd, buf, i) != i)
			FUNC2("write to %s failed", to);
	FUNC0(fromfd);
	FUNC0(tofd);
	return 0;
}