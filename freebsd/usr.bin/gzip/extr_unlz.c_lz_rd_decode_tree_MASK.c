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
struct lz_range_decoder {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct lz_range_decoder*,int*) ; 

__attribute__((used)) static unsigned
FUNC1(struct lz_range_decoder *rd, int *bm, int num_bits)
{
	unsigned symbol = 1;

	for (int i = 0; i < num_bits; i++)
		symbol = (symbol << 1) | FUNC0(rd, &bm[symbol]);

	return symbol - (1 << num_bits);
}