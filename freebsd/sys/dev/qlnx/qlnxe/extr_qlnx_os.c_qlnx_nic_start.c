
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hw_init_params {int b_hw_start; int allow_npar_tx_switch; int * bin_fw_data; int int_mode; int * p_tunn; } ;
struct ecore_dev {int int_mode; } ;


 int bzero (struct ecore_hw_init_params*,int) ;
 int ecore_hw_init (struct ecore_dev*,struct ecore_hw_init_params*) ;
 int ecore_resc_free (struct ecore_dev*) ;

__attribute__((used)) static int
qlnx_nic_start(struct ecore_dev *cdev)
{
        int rc;
 struct ecore_hw_init_params params;

 bzero(&params, sizeof (struct ecore_hw_init_params));

 params.p_tunn = ((void*)0);
 params.b_hw_start = 1;
 params.int_mode = cdev->int_mode;
 params.allow_npar_tx_switch = 1;
 params.bin_fw_data = ((void*)0);

        rc = ecore_hw_init(cdev, &params);
        if (rc) {
                ecore_resc_free(cdev);
                return rc;
        }

        return 0;
}
