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
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct filedesc *fdp, int low, int size)
{
	NDSLOTTYPE *map = fdp->fd_map;
	NDSLOTTYPE mask;
	int off, maxoff;

	if (low >= size)
		return (low);

	off = FUNC0(low);
	if (low % NDENTRIES) {
		mask = ~(~(NDSLOTTYPE)0 >> (NDENTRIES - (low % NDENTRIES)));
		if ((mask &= ~map[off]) != 0UL)
			return (off * NDENTRIES + FUNC2(mask) - 1);
		++off;
	}
	for (maxoff = FUNC1(size); off < maxoff; ++off)
		if (map[off] != ~0UL)
			return (off * NDENTRIES + FUNC2(~map[off]) - 1);
	return (size);
}