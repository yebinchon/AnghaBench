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
struct accept_filter {int /*<<< orphan*/ * accf_callback; } ;

/* Variables and functions */
 int ENOENT ; 
 struct accept_filter* FUNC0 (char*) ; 

int
FUNC1(char *name)
{
	struct accept_filter *p;

	p = FUNC0(name);
	if (p == NULL)
		return (ENOENT);

	p->accf_callback = NULL;
	return (0);
}