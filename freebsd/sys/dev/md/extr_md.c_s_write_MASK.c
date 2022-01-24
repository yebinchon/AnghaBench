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
struct indir {int shift; uintptr_t* array; scalar_t__ used; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NMASK ; 
 int /*<<< orphan*/  FUNC1 (struct indir*) ; 
 int md_debug ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ nshift ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC4(struct indir *ip, off_t offset, uintptr_t ptr)
{
	struct indir *cip, *lip[10];
	int idx, li;
	uintptr_t up;

	if (md_debug > 1)
		FUNC3("s_write(%jd, %p)\n", (intmax_t)offset, (void *)ptr);
	up = 0;
	li = 0;
	cip = ip;
	for (;;) {
		lip[li++] = cip;
		if (cip->shift) {
			idx = (offset >> cip->shift) & NMASK;
			up = cip->array[idx];
			if (up != 0) {
				cip = (struct indir *)up;
				continue;
			}
			/* Allocate branch */
			cip->array[idx] =
			    (uintptr_t)FUNC2(cip->shift - nshift);
			if (cip->array[idx] == 0)
				return (ENOSPC);
			cip->used++;
			up = cip->array[idx];
			cip = (struct indir *)up;
			continue;
		}
		/* leafnode */
		idx = offset & NMASK;
		up = cip->array[idx];
		if (up != 0)
			cip->used--;
		cip->array[idx] = ptr;
		if (ptr != 0)
			cip->used++;
		break;
	}
	if (cip->used != 0 || li == 1)
		return (0);
	li--;
	while (cip->used == 0 && cip != ip) {
		li--;
		idx = (offset >> lip[li]->shift) & NMASK;
		up = lip[li]->array[idx];
		FUNC0(up == (uintptr_t)cip, ("md screwed up"));
		FUNC1(cip);
		lip[li]->array[idx] = 0;
		lip[li]->used--;
		cip = lip[li];
	}
	return (0);
}