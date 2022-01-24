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

/* Variables and functions */
 int MEGATX ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(int fd)
{
	int error;

	error = FUNC2(fd, buf, MEGATX);
	if (error == -1)
		FUNC0(1, "read");
	if (error != MEGATX)
		FUNC1(1, "disk too small for test.");
}