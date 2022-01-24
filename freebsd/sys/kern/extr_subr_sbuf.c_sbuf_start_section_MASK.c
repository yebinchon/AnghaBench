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
struct sbuf {scalar_t__ s_sect_len; int /*<<< orphan*/  s_len; int /*<<< orphan*/  s_rec_off; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SBUF_INSECTION ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct sbuf *s, ssize_t *old_lenp)
{

	FUNC3(s);
	FUNC4(s, 0);

	if (!FUNC1(s)) {
		FUNC0(s->s_sect_len == 0,
		    ("s_sect_len != 0 when starting a section"));
		if (old_lenp != NULL)
			*old_lenp = -1;
		s->s_rec_off = s->s_len;
		FUNC2(s, SBUF_INSECTION);
	} else {
		FUNC0(old_lenp != NULL,
		    ("s_sect_len should be saved when starting a subsection"));
		*old_lenp = s->s_sect_len;
		s->s_sect_len = 0;
	}
}