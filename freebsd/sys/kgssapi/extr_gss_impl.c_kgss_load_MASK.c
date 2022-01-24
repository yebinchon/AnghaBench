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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SY_THR_STATIC_KLD ; 
 int /*<<< orphan*/  gssd_syscalls ; 
 int /*<<< orphan*/  kgss_mechs ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void)
{
	int error;

	FUNC0(&kgss_mechs);
	error = FUNC1(gssd_syscalls, SY_THR_STATIC_KLD);
	if (error != 0)
		return (error);
	return (0);
}