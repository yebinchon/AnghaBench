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
struct stack {int depth; scalar_t__* pcs; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int STACK_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,int,void*,char*,long) ; 
 int FUNC2 (scalar_t__,char*,int,long*,int) ; 

int
FUNC3(struct sbuf *sb, const struct stack *st, int flags)
{
	char namebuf[64];
	long offset;
	int i, error;

	FUNC0(st->depth <= STACK_MAX, ("bogus stack"));
	for (i = 0; i < st->depth; i++) {
		error = FUNC2(st->pcs[i], namebuf, sizeof(namebuf),
		    &offset, flags);
		if (error == EWOULDBLOCK)
			return (error);
		FUNC1(sb, "#%d %p at %s+%#lx\n", i, (void *)st->pcs[i],
		    namebuf, offset);
	}
	return (0);
}