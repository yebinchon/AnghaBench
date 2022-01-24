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
typedef  int u8 ;
typedef  int u16 ;
struct i40e_context_ele {int lsb; int offset; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  src_word ;
typedef  int /*<<< orphan*/  dest_word ;
typedef  int __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_DMA_TO_NONDMA ; 
 int /*<<< orphan*/  I40E_NONDMA_TO_DMA ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u8 *hmc_bits,
			   struct i40e_context_ele *ce_info,
			   u8 *dest)
{
	u16 dest_word, mask;
	u8 *src, *target;
	u16 shift_width;
	__le16 src_word;

	/* prepare the bits and mask */
	shift_width = ce_info->lsb % 8;
	mask = FUNC0(ce_info->width) - 1;

	/* shift to correct alignment */
	mask <<= shift_width;

	/* get the current bits from the src bit string */
	src = hmc_bits + (ce_info->lsb / 8);

	FUNC3(&src_word, src, sizeof(src_word), I40E_DMA_TO_NONDMA);

	/* the data in the memory is stored as little endian so mask it
	 * correctly
	 */
	src_word &= ~(FUNC1(mask));

	/* get the data back into host order before shifting */
	dest_word = FUNC2(src_word);

	dest_word >>= shift_width;

	/* get the address from the struct field */
	target = dest + ce_info->offset;

	/* put it back in the struct */
	FUNC3(target, &dest_word, sizeof(dest_word), I40E_NONDMA_TO_DMA);
}