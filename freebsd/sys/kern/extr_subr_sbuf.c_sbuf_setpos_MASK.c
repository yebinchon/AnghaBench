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
struct sbuf {scalar_t__ s_size; scalar_t__ s_len; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct sbuf *s, ssize_t pos)
{

	FUNC2(s);
	FUNC3(s, 0);

	FUNC0(pos >= 0,
	    ("attempt to seek to a negative position (%jd)", (intmax_t)pos));
	FUNC0(pos < s->s_size,
	    ("attempt to seek past end of sbuf (%jd >= %jd)",
	    (intmax_t)pos, (intmax_t)s->s_size));
	FUNC0(!FUNC1(s),
	    ("attempt to seek when in a section"));

	if (pos < 0 || pos > s->s_len)
		return (-1);
	s->s_len = pos;
	return (0);
}