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
struct TYPE_2__ {char* name; int len; } ;

/* Variables and functions */
 TYPE_1__* nsequences ; 
 char* FUNC0 (char*,char) ; 
 void* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

void
FUNC3(char *seq)
{
	int i;
	char *p;

	p = seq;
	for (i = 0; i < 5; i++) {
		nsequences[i].name = p;
		if ((p = FUNC0(p, ' ')) == NULL) {
			/* Oh oh there is something wrong. Erase! Erase! */
			for (i = 0; i < 5; i++) {
				nsequences[i].name = NULL;
				nsequences[i].len = 0;
			}
			return;
		}
		*p = '\0';
		p++;
	}
	nsequences[i].name = p;

	for (i = 0; i < 5; i++) {
		nsequences[i].name = FUNC1(nsequences[i].name);
		nsequences[i].len = nsequences[i + 1].name - nsequences[i].name;
	}
	nsequences[i].name = FUNC1(nsequences[i].name);
	nsequences[i].len = FUNC2(nsequences[i].name);

	return;
}