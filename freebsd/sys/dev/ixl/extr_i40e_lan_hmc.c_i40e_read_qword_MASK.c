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
typedef  int u64 ;
typedef  int u16 ;
struct i40e_context_ele {int lsb; int width; int offset; } ;
typedef  int /*<<< orphan*/  src_qword ;
typedef  int /*<<< orphan*/  dest_qword ;
typedef  int __le64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_DMA_TO_NONDMA ; 
 int /*<<< orphan*/  I40E_NONDMA_TO_DMA ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u8 *hmc_bits,
			    struct i40e_context_ele *ce_info,
			    u8 *dest)
{
	u64 dest_qword, mask;
	u8 *src, *target;
	u16 shift_width;
	__le64 src_qword;

	/* prepare the bits and mask */
	shift_width = ce_info->lsb % 8;

	/* if the field width is exactly 64 on an x86 machine, then the shift
	 * operation will not work because the SHL instructions count is masked
	 * to 6 bits so the shift will do nothing
	 */
	if (ce_info->width < 64)
		mask = FUNC0(ce_info->width) - 1;
	else
		mask = ~(u64)0;

	/* shift to correct alignment */
	mask <<= shift_width;

	/* get the current bits from the src bit string */
	src = hmc_bits + (ce_info->lsb / 8);

	FUNC3(&src_qword, src, sizeof(src_qword), I40E_DMA_TO_NONDMA);

	/* the data in the memory is stored as little endian so mask it
	 * correctly
	 */
	src_qword &= ~(FUNC1(mask));

	/* get the data back into host order before shifting */
	dest_qword = FUNC2(src_qword);

	dest_qword >>= shift_width;

	/* get the address from the struct field */
	target = dest + ce_info->offset;

	/* put it back in the struct */
	FUNC3(target, &dest_qword, sizeof(dest_qword),
		    I40E_NONDMA_TO_DMA);
}