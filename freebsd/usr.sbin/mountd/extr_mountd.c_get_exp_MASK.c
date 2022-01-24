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
struct exportlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static struct exportlist *
FUNC2(void)
{
	struct exportlist *ep;

	ep = (struct exportlist *)FUNC0(1, sizeof (struct exportlist));
	if (ep == (struct exportlist *)NULL)
		FUNC1();
	return (ep);
}