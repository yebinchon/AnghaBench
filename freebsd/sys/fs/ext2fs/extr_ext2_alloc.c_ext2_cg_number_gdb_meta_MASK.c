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
typedef  int uint64_t ;
struct m_ext2fs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct m_ext2fs*) ; 

__attribute__((used)) static uint64_t
FUNC1(struct m_ext2fs *fs, int cg)
{
	unsigned long metagroup;
	int first, last;

	metagroup = cg / FUNC0(fs);
	first = metagroup * FUNC0(fs);
	last = first + FUNC0(fs) - 1;

	if (cg == first || cg == first + 1 || cg == last)
		return (1);

	return (0);
}