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
 int HAST_ROLE_INIT ; 
 int HAST_ROLE_PRIMARY ; 
 int HAST_ROLE_SECONDARY ; 
 int HAST_ROLE_UNDEF ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *str)
{

	if (FUNC0(str, "init") == 0)
		return (HAST_ROLE_INIT);
	if (FUNC0(str, "primary") == 0)
		return (HAST_ROLE_PRIMARY);
	if (FUNC0(str, "secondary") == 0)
		return (HAST_ROLE_SECONDARY);
	return (HAST_ROLE_UNDEF);
}