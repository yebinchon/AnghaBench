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
struct proto_handler {scalar_t__ dir; } ;

/* Variables and functions */
 scalar_t__ NODIR ; 
 int FUNC0 (struct proto_handler*) ; 

int
FUNC1(struct proto_handler *p)
{
	int error;

	while (p->dir != NODIR) {
		error = FUNC0(p);
		if (error)
			return (error);
		p++;
	}

	return (0);
}