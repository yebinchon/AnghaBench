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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char**) ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (int,char**) ; 
 int FUNC4 (int,char**) ; 

__attribute__((used)) static int
FUNC5(int ac, char **av)
{
	int error;

	FUNC0("Adapter:\n");
	error = FUNC1(ac, av);
	FUNC0("Devices:\n");
	error = FUNC2(ac, av);
	FUNC0("Enclosures:\n");
	error = FUNC3(ac, av);
	FUNC0("Expanders:\n");
	error = FUNC4(ac, av);
	return (error);
}