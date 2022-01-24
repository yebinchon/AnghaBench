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
struct ecore_hw_init_params {int b_hw_start; int allow_npar_tx_switch; int /*<<< orphan*/ * bin_fw_data; int /*<<< orphan*/  int_mode; int /*<<< orphan*/ * p_tunn; } ;
struct ecore_dev {int /*<<< orphan*/  int_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hw_init_params*,int) ; 
 int FUNC1 (struct ecore_dev*,struct ecore_hw_init_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_dev*) ; 

__attribute__((used)) static int
FUNC3(struct ecore_dev *cdev)
{
        int				rc;
	struct ecore_hw_init_params	params;

	FUNC0(&params, sizeof (struct ecore_hw_init_params));

	params.p_tunn = NULL;
	params.b_hw_start = true;
	params.int_mode = cdev->int_mode;
	params.allow_npar_tx_switch = true;
	params.bin_fw_data = NULL;

        rc = FUNC1(cdev, &params);
        if (rc) {
                FUNC2(cdev);
                return rc;
        }

        return 0;
}