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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct phys_sge_pairs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline int
FUNC1(int nsegs)
{
	int len;

	len = (nsegs / 8) * sizeof(struct phys_sge_pairs);
	if ((nsegs % 8) != 0) {
		len += sizeof(uint16_t) * 8;
		len += FUNC0(nsegs % 8, 2) * sizeof(uint64_t);
	}
	return (len);
}