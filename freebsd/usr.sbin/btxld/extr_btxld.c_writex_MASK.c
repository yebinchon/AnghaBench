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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tname ; 
 int FUNC2 (int,void const*,size_t) ; 

__attribute__((used)) static void
FUNC3(int fd, const void *buf, size_t nbyte)
{
    ssize_t n;

    if ((n = FUNC2(fd, buf, nbyte)) == -1)
	FUNC0(2, "%s", tname);
    if ((size_t)n != nbyte)
	FUNC1(2, "%s: Short write", tname);
}