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
struct bitmap {int size; scalar_t__ map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 

struct bitmap
FUNC2(int size)
{
	struct bitmap   bm;
	int             szmap = (size / 8) + !!(size % 8);

	bm.size = size;
	bm.map = FUNC0(szmap);
	if (bm.map)
		FUNC1(bm.map, 0, szmap);
	return bm;
}