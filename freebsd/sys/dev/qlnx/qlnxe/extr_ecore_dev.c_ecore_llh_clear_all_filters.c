
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ecore_dev {TYPE_1__* p_llh_info; int mf_bits; } ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;


 int ECORE_MF_LLH_MAC_CLSS ;
 int ECORE_MF_LLH_PROTO_CLSS ;
 int OSAL_TEST_BIT (int ,int *) ;
 int ecore_llh_clear_ppfid_filters (struct ecore_dev*,scalar_t__) ;

void ecore_llh_clear_all_filters(struct ecore_dev *p_dev)
{
 u8 ppfid;

 if (!OSAL_TEST_BIT(ECORE_MF_LLH_PROTO_CLSS, &p_dev->mf_bits) &&
     !OSAL_TEST_BIT(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits))
  return;

 for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++)
  ecore_llh_clear_ppfid_filters(p_dev, ppfid);
}
