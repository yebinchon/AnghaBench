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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i40e_context_ele {int offset; int lsb; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  dest_word ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_DMA_TO_NONDMA ; 
 int /*<<< orphan*/  I40E_NONDMA_TO_DMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u8 *hmc_bits,
			    struct i40e_context_ele *ce_info,
			    u8 *src)
{
	u16 src_word, mask;
	u8 *from, *dest;
	u16 shift_width;
	__le16 dest_word;

	/* copy from the next struct field */
	from = src + ce_info->offset;

	/* prepare the bits and mask */
	shift_width = ce_info->lsb % 8;
	mask = FUNC0(ce_info->width) - 1;

	/* don't swizzle the bits until after the mask because the mask bits
	 * will be in a different bit position on big endian machines
	 */
	src_word = *(u16 *)from;
	src_word &= mask;

	/* shift to correct alignment */
	mask <<= shift_width;
	src_word <<= shift_width;

	/* get the current bits from the target bit string */
	dest = hmc_bits + (ce_info->lsb / 8);

	FUNC2(&dest_word, dest, sizeof(dest_word), I40E_DMA_TO_NONDMA);

	dest_word &= ~(FUNC1(mask));	/* get the bits not changing */
	dest_word |= FUNC1(src_word);	/* add in the new bits */

	/* put it all back */
	FUNC2(dest, &dest_word, sizeof(dest_word), I40E_NONDMA_TO_DMA);
}