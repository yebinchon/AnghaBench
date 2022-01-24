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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * signal_fd ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

void
FUNC2(int sig)
{
	if (FUNC1(signal_fd[1], &sig, sizeof sig) != sizeof sig)
		FUNC0(1, "cannot process signal.");
}