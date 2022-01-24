#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int from; int to; } ;
struct TYPE_3__ {int from; int to; } ;
struct diff {TYPE_2__ new; TYPE_1__ old; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char**) ; 
 int szchanges ; 

__attribute__((used)) static int
FUNC6(int fd, struct diff **dd)
{
	int a, b, c, d;
	size_t i;
	char kind, *p;
	FILE *f;

	f = FUNC2(fd, "r");
	if (f == NULL)
		FUNC0(2, "fdopen");
	for (i=0; (p = FUNC3(f)); i++) {
		if (i >= szchanges - 1)
			FUNC4();
		a = b = FUNC5(&p);
		if (*p == ',') {
			p++;
			b = FUNC5(&p);
		}
		kind = *p++;
		c = d = FUNC5(&p);
		if (*p==',') {
			p++;
			d = FUNC5(&p);
		}
		if (kind == 'a')
			a++;
		if (kind == 'd')
			c++;
		b++;
		d++;
		(*dd)[i].old.from = a;
		(*dd)[i].old.to = b;
		(*dd)[i].new.from = c;
		(*dd)[i].new.to = d;
	}
	if (i) {
		(*dd)[i].old.from = (*dd)[i-1].old.to;
		(*dd)[i].new.from = (*dd)[i-1].new.to;
	}
	FUNC1(f);
	return (i);
}