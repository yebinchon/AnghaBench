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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int O_CLOEXEC ; 
 int O_EXEC ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  rootfd ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1("security_capabilities");
	FUNC1("security_capability_mode");

	FUNC0((rootfd = FUNC2("/", O_EXEC | O_CLOEXEC)) >= 0);
}