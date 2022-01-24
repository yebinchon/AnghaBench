#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 struct ecore_ptt* FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static int
FUNC4(qlnx_host_t *ha, uint32_t *flash_size)
{
	struct ecore_hwfn	*p_hwfn;
	struct ecore_ptt	*p_ptt;

	p_hwfn = &ha->cdev.hwfns[0];
	p_ptt = FUNC2(p_hwfn);

	if (p_ptt ==  NULL) {
                FUNC0(ha,"ecore_ptt_acquire failed\n");
                return (-1);
	}
	FUNC1(p_hwfn, p_ptt, flash_size);
	
	FUNC3(p_hwfn, p_ptt);

	return (0);
}