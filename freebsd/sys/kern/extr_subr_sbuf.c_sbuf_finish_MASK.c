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
struct sbuf {char* s_buf; size_t s_len; scalar_t__ s_error; int /*<<< orphan*/ * s_drain_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FINISHED ; 
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (struct sbuf*) ; 

int
FUNC5(struct sbuf *s)
{

	FUNC2(s);
	FUNC3(s, 0);

	s->s_buf[s->s_len] = '\0';
	if (FUNC0(s))
		s->s_len++;
	if (s->s_drain_func != NULL) {
		while (s->s_len > 0 && s->s_error == 0)
			s->s_error = FUNC4(s);
	}
	FUNC1(s, SBUF_FINISHED);
#ifdef _KERNEL
	return (s->s_error);
#else
	if (s->s_error != 0) {
		errno = s->s_error;
		return (-1);
	}
	return (0);
#endif
}