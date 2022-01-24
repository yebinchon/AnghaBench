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
 int /*<<< orphan*/  server_capabilities_v1 ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char *line, int *len)
{
	int nul_location = FUNC0(line);
	if (nul_location == *len)
		return;
	server_capabilities_v1 = FUNC1(line + nul_location + 1);
	*len = nul_location;
}