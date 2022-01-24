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
struct tcptemp {int /*<<< orphan*/  tt_t; int /*<<< orphan*/  tt_ipgen; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct tcptemp* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*,void*,void*) ; 

struct tcptemp *
FUNC2(struct inpcb *inp)
{
	struct tcptemp *t;

	t = FUNC0(sizeof(*t), M_TEMP, M_NOWAIT);
	if (t == NULL)
		return (NULL);
	FUNC1(inp, (void *)&t->tt_ipgen, (void *)&t->tt_t);
	return (t);
}