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
struct sbuf {struct sbuf* s_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 scalar_t__ FUNC1 (struct sbuf*) ; 
 int FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct sbuf *s)
{
	int isdyn;

	FUNC3(s);
	/* don't care if it's finished or not */

	if (FUNC1(s))
		FUNC0(s->s_buf);
	isdyn = FUNC2(s);
	FUNC4(s, 0, sizeof(*s));
	if (isdyn)
		FUNC0(s);
}