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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 char* FUNC4 (char*,char const*,char const*) ; 

__attribute__((used)) static char *FUNC5(const char *obj_dir,
				      const char *oid_hex)
{
	char *filename = FUNC4("%s/info/commit-graphs/graph-%s.graph",
				 obj_dir,
				 oid_hex);
	char *normalized = FUNC3(FUNC2(filename) + 1);
	FUNC1(normalized, filename);
	FUNC0(filename);
	return normalized;
}