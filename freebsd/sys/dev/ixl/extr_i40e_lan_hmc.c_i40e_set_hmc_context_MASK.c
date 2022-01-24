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
struct i40e_context_ele {scalar_t__ width; int size_of; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct i40e_context_ele*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct i40e_context_ele*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct i40e_context_ele*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct i40e_context_ele*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum i40e_status_code FUNC4(u8 *context_bytes,
					struct i40e_context_ele *ce_info,
					u8 *dest)
{
	int f;

	for (f = 0; ce_info[f].width != 0; f++) {

		/* we have to deal with each element of the HMC using the
		 * correct size so that we are correct regardless of the
		 * endianness of the machine
		 */
		switch (ce_info[f].size_of) {
		case 1:
			FUNC0(context_bytes, &ce_info[f], dest);
			break;
		case 2:
			FUNC3(context_bytes, &ce_info[f], dest);
			break;
		case 4:
			FUNC1(context_bytes, &ce_info[f], dest);
			break;
		case 8:
			FUNC2(context_bytes, &ce_info[f], dest);
			break;
		}
	}

	return I40E_SUCCESS;
}