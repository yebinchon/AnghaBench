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
struct sbuf {int s_len; char* s_buf; scalar_t__ s_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char) ; 

int
FUNC4(struct sbuf *s)
{

	FUNC1(s);
	FUNC2(s, 0);

	/*
	 * If the s_buf isn't empty, the last byte is simply s_buf[s_len - 1].
	 *
	 * If the s_buf is empty because a drain function drained it, we
	 * remember if the last byte was a \n with the SBUF_DRAINATEOL flag in
	 * sbuf_drain().
	 *
	 * In either case, we only append a \n if the previous character was
	 * something else.
	 */
	if (s->s_len == 0) {
		if (!FUNC0(s))
			FUNC3(s, '\n');
	} else if (s->s_buf[s->s_len - 1] != '\n')
		FUNC3(s, '\n');

	if (s->s_error != 0)
		return (-1);
	return (0);
}