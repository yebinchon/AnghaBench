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
struct ecore_pf_params {int dummy; } ;
struct ecore_hwfn {int using_ll2; struct ecore_pf_params pf_params; } ;
struct ecore_dev {int num_hwfns; struct ecore_hwfn* hwfns; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int FUNC0 (struct ecore_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ecore_dev *cdev, struct ecore_pf_params *func_params)
{
        int	rc, i;

        for (i = 0; i < cdev->num_hwfns; i++) {
                struct ecore_hwfn *p_hwfn = &cdev->hwfns[i];
                p_hwfn->pf_params = *func_params;

#ifdef QLNX_ENABLE_IWARP
		if (qlnx_vf_device((qlnx_host_t *)cdev) != 0) {
			p_hwfn->using_ll2 = true;
		}
#endif /* #ifdef QLNX_ENABLE_IWARP */

        }

        rc = FUNC0(cdev);
        if (rc)
                goto qlnx_nic_setup_exit;

        FUNC1(cdev);

qlnx_nic_setup_exit:

        return rc;
}