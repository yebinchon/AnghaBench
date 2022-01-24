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
struct sbuf {scalar_t__ s_len; void* s_drain_arg; int /*<<< orphan*/ * s_drain_func; } ;
typedef  int /*<<< orphan*/  sbuf_drain_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct sbuf *s, sbuf_drain_func *func, void *ctx)
{

	FUNC2(s, 0);
	FUNC1(s);
	FUNC0(func == s->s_drain_func || s->s_len == 0,
	    ("Cannot change drain to %p on non-empty sbuf %p", func, s));
	s->s_drain_func = func;
	s->s_drain_arg = ctx;
}