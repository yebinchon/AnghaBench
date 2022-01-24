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
struct bitmap {int size; unsigned char* map; } ;

/* Variables and functions */

int
FUNC0(struct bitmap * bm)
{
	int             szmap = (bm->size / 8) + !!(bm->size % 8);
	int             at = 0;
	int             pos = 0;

	while (pos < szmap) {
		unsigned char   bmv = bm->map[pos++];
		unsigned char   bmask = 1;

		while (bmask & 0xff) {
			if ((bmv & bmask) == 0)
				return at;
			bmask <<= 1;
			++at;
		}
	}
	return at;
}