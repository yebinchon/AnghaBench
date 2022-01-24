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
struct keymap {char* desc; } ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct keymap **km_sorted, int num_keymaps)
{
	int i;

	for (i=0; i<num_keymaps; i++) {
		char *p;
		char *km = km_sorted[i]->desc;
		if ((p = FUNC1(km, "8x08")) != NULL) {
			p += 2;
			while (*p++)
				p[-1] = p[0];

			km = FUNC0(km, p - km - 1);
			km_sorted[i]->desc = km;
		}
	}
}