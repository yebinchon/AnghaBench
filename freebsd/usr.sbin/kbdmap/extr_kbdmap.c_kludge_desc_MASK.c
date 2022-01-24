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
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct keymap **km_sorted, int num_keymaps)
{
	int i;

	for (i=0; i<num_keymaps; i++) {
		char *p;
		char *km = km_sorted[i]->desc;
		if ((p = FUNC2(km, "8x8")) != NULL) {
			int len;
			int j;
			int offset;

			offset = p - km;

			/* Make enough space for the extra '0' */
			len = FUNC1(km);
			km = FUNC0(km, len + 2);

			for (j=len; j!=offset+1; j--)
				km[j + 1] = km[j];

			km[offset+2] = '0';

			km_sorted[i]->desc = km;
		}
	}
}