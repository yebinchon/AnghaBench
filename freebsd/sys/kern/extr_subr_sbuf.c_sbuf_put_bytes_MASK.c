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
struct sbuf {scalar_t__ s_error; size_t s_len; size_t s_sect_len; int /*<<< orphan*/ * s_buf; int /*<<< orphan*/ * s_drain_func; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 size_t INT_MAX ; 
 size_t FUNC0 (struct sbuf*) ; 
 scalar_t__ FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 scalar_t__ FUNC6 (struct sbuf*,size_t) ; 

__attribute__((used)) static void
FUNC7(struct sbuf *s, const char *buf, size_t len)
{
	size_t n;

	FUNC2(s);
	FUNC3(s, 0);

	if (s->s_error != 0)
		return;
	while (len > 0) {
		if (FUNC0(s) <= 0) {
			/*
			 * If there is a drain, use it, otherwise extend the
			 * buffer.
			 */
			if (s->s_drain_func != NULL)
				(void)FUNC5(s);
			else if (FUNC6(s, len > INT_MAX ? INT_MAX : len)
			    < 0)
				s->s_error = ENOMEM;
			if (s->s_error != 0)
				return;
		}
		n = FUNC0(s);
		if (len < n)
			n = len;
		FUNC4(&s->s_buf[s->s_len], buf, n);
		s->s_len += n;
		if (FUNC1(s))
			s->s_sect_len += n;
		len -= n;
		buf += n;
	}
}