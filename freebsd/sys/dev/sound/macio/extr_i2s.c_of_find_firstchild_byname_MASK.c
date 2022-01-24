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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static phandle_t
FUNC5(phandle_t node, const char *req_name)
{
	char 		name[32]; /* max name len per OF spec. */
	phandle_t 	n;

	for (n = FUNC0(node); n != -1; n = FUNC2(n)) {
		FUNC3(name, sizeof(name));
		FUNC1(n, "name", name, sizeof(name));

		if (FUNC4(name, req_name) == 0)
			return (n);
	}

	return (-1);
}