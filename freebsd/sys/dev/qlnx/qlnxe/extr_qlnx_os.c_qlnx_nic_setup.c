
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_pf_params {int dummy; } ;
struct ecore_hwfn {int using_ll2; struct ecore_pf_params pf_params; } ;
struct ecore_dev {int num_hwfns; struct ecore_hwfn* hwfns; } ;
typedef int qlnx_host_t ;


 int ecore_resc_alloc (struct ecore_dev*) ;
 int ecore_resc_setup (struct ecore_dev*) ;
 scalar_t__ qlnx_vf_device (int *) ;

__attribute__((used)) static int
qlnx_nic_setup(struct ecore_dev *cdev, struct ecore_pf_params *func_params)
{
        int rc, i;

        for (i = 0; i < cdev->num_hwfns; i++) {
                struct ecore_hwfn *p_hwfn = &cdev->hwfns[i];
                p_hwfn->pf_params = *func_params;







        }

        rc = ecore_resc_alloc(cdev);
        if (rc)
                goto qlnx_nic_setup_exit;

        ecore_resc_setup(cdev);

qlnx_nic_setup_exit:

        return rc;
}
