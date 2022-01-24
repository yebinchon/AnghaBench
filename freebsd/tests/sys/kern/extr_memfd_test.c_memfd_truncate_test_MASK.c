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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int /*<<< orphan*/  MFD_ALLOW_SEALING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int initial_size, int dest_size, int seals)
{
	int err, fd;

	FUNC0((fd = FUNC4("...", MFD_ALLOW_SEALING)) != -1);
	FUNC0(FUNC3(fd, initial_size) == 0);

	FUNC0(FUNC2(fd, F_ADD_SEALS, seals) == 0);

	err = FUNC3(fd, dest_size);
	if (err != 0)
		err = errno;
	FUNC1(fd);
	return (err);
}