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
struct env {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct env*) ; 

void
FUNC1(int fd, short event, void *p)
{
	struct env	*env = p;

	FUNC0(env);
}