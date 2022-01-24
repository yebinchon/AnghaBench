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
struct printer {scalar_t__ remote; } ;

/* Variables and functions */
 char* current ; 
 char* local_host ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(const struct printer *pp)
{
	if (pp->remote)
		FUNC0("%s: ", local_host);
	FUNC1("Warning: no daemon present");
	current[0] = '\0';
}