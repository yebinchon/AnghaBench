#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* buf; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  linenr; } ;

/* Variables and functions */
 TYPE_3__* cf ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static char *FUNC4(void)
{
	int quote = 0, comment = 0, space = 0;

	FUNC3(&cf->value);
	for (;;) {
		int c = FUNC0();
		if (c == '\n') {
			if (quote) {
				cf->linenr--;
				return NULL;
			}
			return cf->value.buf;
		}
		if (comment)
			continue;
		if (FUNC1(c) && !quote) {
			if (cf->value.len)
				space++;
			continue;
		}
		if (!quote) {
			if (c == ';' || c == '#') {
				comment = 1;
				continue;
			}
		}
		for (; space; space--)
			FUNC2(&cf->value, ' ');
		if (c == '\\') {
			c = FUNC0();
			switch (c) {
			case '\n':
				continue;
			case 't':
				c = '\t';
				break;
			case 'b':
				c = '\b';
				break;
			case 'n':
				c = '\n';
				break;
			/* Some characters escape as themselves */
			case '\\': case '"':
				break;
			/* Reject unknown escape sequences */
			default:
				return NULL;
			}
			FUNC2(&cf->value, c);
			continue;
		}
		if (c == '"') {
			quote = 1-quote;
			continue;
		}
		FUNC2(&cf->value, c);
	}
}