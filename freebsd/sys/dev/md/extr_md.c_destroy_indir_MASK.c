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
struct md_s {int /*<<< orphan*/  uma; } ;
struct indir {int* array; scalar_t__ shift; } ;

/* Variables and functions */
 int NINDIR ; 
 int /*<<< orphan*/  FUNC0 (struct indir*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC2(struct md_s *sc, struct indir *ip)
{
	int i;

	for (i = 0; i < NINDIR; i++) {
		if (!ip->array[i])
			continue;
		if (ip->shift)
			FUNC2(sc, (struct indir*)(ip->array[i]));
		else if (ip->array[i] > 255)
			FUNC1(sc->uma, (void *)(ip->array[i]));
	}
	FUNC0(ip);
}