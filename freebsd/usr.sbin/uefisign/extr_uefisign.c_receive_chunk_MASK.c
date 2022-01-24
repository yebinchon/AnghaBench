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
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,void*,size_t) ; 

void
FUNC3(void **bufp, size_t *lenp, int pipefd)
{
	ssize_t ret;
	size_t len;
	void *buf;

	ret = FUNC2(pipefd, &len, sizeof(len));
	if (ret != sizeof(len))
		FUNC1(1, "read");

	buf = FUNC0(1, len);
	if (buf == NULL)
		FUNC1(1, "calloc");

	ret = FUNC2(pipefd, buf, len);
	if (ret != (ssize_t)len)
		FUNC1(1, "read");

	*bufp = buf;
	*lenp = len;
}