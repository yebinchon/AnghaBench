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
typedef  int /*<<< orphan*/  u_char ;
struct uni_msg {int /*<<< orphan*/ * b_buf; int /*<<< orphan*/ * b_lim; int /*<<< orphan*/ * b_rptr; int /*<<< orphan*/ * b_wptr; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ EXTRA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_UNIMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uni_msg*) ; 
 size_t FUNC4 (struct uni_msg*) ; 
 size_t FUNC5 (struct uni_msg*) ; 

int
FUNC6(struct uni_msg *m, size_t s)
{
	u_char *b;
	size_t len, lead;

	lead = FUNC4(m);
	len = FUNC5(m);
	s += lead + len + EXTRA;
	if ((b = FUNC2(s, M_UNIMSG, M_NOWAIT)) == NULL) {
		FUNC3(m);
		return (ENOMEM);
	}

	FUNC0(m->b_rptr, b + lead, len);
	FUNC1(m->b_buf, M_UNIMSG);

	m->b_buf = b;
	m->b_rptr = m->b_buf + lead;
	m->b_wptr = m->b_rptr + len;
	m->b_lim = m->b_buf + s;

	return (0);
}