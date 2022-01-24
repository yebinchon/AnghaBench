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
struct hostlist {scalar_t__ ht_flag; struct hostlist* ht_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static struct hostlist *
FUNC2(void)
{
	struct hostlist *hp;

	hp = (struct hostlist *)FUNC0(sizeof (struct hostlist));
	if (hp == (struct hostlist *)NULL)
		FUNC1();
	hp->ht_next = (struct hostlist *)NULL;
	hp->ht_flag = 0;
	return (hp);
}