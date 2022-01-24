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
 int /*<<< orphan*/  FUNC1 (char const*,size_t,char const*) ; 
 scalar_t__ FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(const char *name,
			       size_t len,
			       const char *value)
{
	if (FUNC2(name, len))
		FUNC1(name, len, value);
	else
		FUNC3(FUNC0("'%s': path for unsupported man viewer.\n"
			  "Please consider using 'man.<tool>.cmd' instead."),
			name);

	return 0;
}