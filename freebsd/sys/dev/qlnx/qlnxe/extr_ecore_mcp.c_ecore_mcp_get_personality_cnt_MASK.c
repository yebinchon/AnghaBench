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
typedef  int u32 ;
struct public_func {int config; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;

/* Variables and functions */
 int ECORE_PCI_DEFAULT ; 
 scalar_t__ ECORE_SUCCESS ; 
 int FUNC_MF_CFG_FUNC_HIDE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*,struct public_func*,struct ecore_ptt*,int*) ; 

int FUNC4(struct ecore_hwfn *p_hwfn,
				  struct ecore_ptt *p_ptt,
				  u32 personalities)
{
	enum ecore_pci_personality protocol = ECORE_PCI_DEFAULT;
	struct public_func shmem_info;
	int i, count = 0, num_pfs;

	num_pfs = FUNC1(p_hwfn->p_dev);

	for (i = 0; i < num_pfs; i++) {
		FUNC2(p_hwfn, p_ptt, &shmem_info,
					 FUNC0(p_hwfn, i));
		if (shmem_info.config & FUNC_MF_CFG_FUNC_HIDE)
			continue;

		if (FUNC3(p_hwfn, &shmem_info, p_ptt,
					      &protocol) !=
		    ECORE_SUCCESS)
			continue;

		if ((1 << ((u32)protocol)) & personalities)
			count++;
	}

	return count;
}