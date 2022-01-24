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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct storm_defs {size_t sem_fast_mem_addr; } ;
struct fw_info_location {int size; size_t grc_addr; } ;
struct fw_info {int size; size_t grc_addr; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  int /*<<< orphan*/  fw_info_location ;

/* Variables and functions */
 size_t BYTES_IN_DWORD ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_info_location*,int /*<<< orphan*/ ,int) ; 
 size_t SEM_FAST_REG_INT_RAM ; 
 int /*<<< orphan*/  SEM_FAST_REG_INT_RAM_SIZE_BB_K2 ; 
 int /*<<< orphan*/  SEM_FAST_REG_INT_RAM_SIZE_E5 ; 
 size_t FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,size_t) ; 
 struct storm_defs* s_storm_defs ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
							   struct ecore_ptt *p_ptt,
							   u8 storm_id,
							   struct fw_info *fw_info)
{
	struct storm_defs *storm = &s_storm_defs[storm_id];
	struct fw_info_location fw_info_location;
	u32 addr, i, *dest;

	FUNC3(&fw_info_location, 0, sizeof(fw_info_location));
	FUNC3(fw_info, 0, sizeof(*fw_info));

	/* Read first the address that points to fw_info location.
	 * The address is located in the last line of the Storm RAM.
	 */
	addr = storm->sem_fast_mem_addr + SEM_FAST_REG_INT_RAM +
		(FUNC2(p_hwfn->p_dev) ?
			FUNC1(SEM_FAST_REG_INT_RAM_SIZE_E5) :
			FUNC1(SEM_FAST_REG_INT_RAM_SIZE_BB_K2))
		- sizeof(fw_info_location);

	dest = (u32 *)&fw_info_location;

	for (i = 0; i < FUNC0(sizeof(fw_info_location)); i++, addr += BYTES_IN_DWORD)
		dest[i] = FUNC4(p_hwfn, p_ptt, addr);

	/* Read FW version info from Storm RAM */
	if (fw_info_location.size > 0 && fw_info_location.size <= sizeof(*fw_info)) {
		addr = fw_info_location.grc_addr;
		dest = (u32 *)fw_info;
		for (i = 0; i < FUNC0(fw_info_location.size); i++, addr += BYTES_IN_DWORD)
			dest[i] = FUNC4(p_hwfn, p_ptt, addr);
	}
}