#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct source {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* readchar ) (struct source*) ;} ;

/* Variables and functions */
 int EOF ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (char*,int,int) ; 
 int FUNC2 (struct source*) ; 

char *
FUNC3(struct source *src)
{
	char *p;
	int count, ch, i, new_sz, sz;
	bool escape;

	escape = false;
	count = 1;
	i = 0;
	sz = 15;
	p = FUNC0(sz + 1);

	while ((ch = (*src->vtable->readchar)(src)) != EOF) {
		if (!escape) {
			if (ch == '[')
				count++;
			else if (ch == ']')
				count--;
			if (count == 0)
				break;
		}
		if (ch == '\\' && !escape)
			escape = true;
		else {
			escape = false;
			if (i == sz) {
				new_sz = sz * 2;
				p = FUNC1(p, 1, new_sz + 1);
				sz = new_sz;
			}
			p[i++] = ch;
		}
	}
	p[i] = '\0';
	return (p);
}