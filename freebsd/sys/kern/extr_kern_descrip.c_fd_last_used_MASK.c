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
struct filedesc {int* fd_map; } ;
typedef  int NDSLOTTYPE ;

/* Variables and functions */
 int NDENTRIES ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct filedesc *fdp, int size)
{
	NDSLOTTYPE *map = fdp->fd_map;
	NDSLOTTYPE mask;
	int off, minoff;

	off = FUNC0(size);
	if (size % NDENTRIES) {
		mask = ~(~(NDSLOTTYPE)0 << (size % NDENTRIES));
		if ((mask &= map[off]) != 0)
			return (off * NDENTRIES + FUNC1(mask) - 1);
		--off;
	}
	for (minoff = FUNC0(0); off >= minoff; --off)
		if (map[off] != 0)
			return (off * NDENTRIES + FUNC1(map[off]) - 1);
	return (-1);
}