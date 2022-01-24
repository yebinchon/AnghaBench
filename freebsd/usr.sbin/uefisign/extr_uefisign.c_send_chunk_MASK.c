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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,void const*,size_t) ; 

void
FUNC2(const void *buf, size_t len, int pipefd)
{
	ssize_t ret;

	ret = FUNC1(pipefd, &len, sizeof(len));
	if (ret != sizeof(len))
		FUNC0(1, "write");
	ret = FUNC1(pipefd, buf, len);
	if (ret != (ssize_t)len)
		FUNC0(1, "write");
}