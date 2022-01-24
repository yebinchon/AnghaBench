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
struct grouplist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static struct grouplist *
FUNC2(void)
{
	struct grouplist *gp;

	gp = (struct grouplist *)FUNC0(1, sizeof (struct grouplist));
	if (gp == (struct grouplist *)NULL)
		FUNC1();
	return (gp);
}