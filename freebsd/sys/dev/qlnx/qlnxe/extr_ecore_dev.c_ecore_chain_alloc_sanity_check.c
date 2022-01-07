
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ecore_dev {int dummy; } ;
typedef int osal_size_t ;
typedef enum ecore_chain_cnt_type { ____Placeholder_ecore_chain_cnt_type } ecore_chain_cnt_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*,unsigned long long) ;
 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_CNT_TYPE_U32 ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_U16_MAX ;
 scalar_t__ ECORE_U32_MAX ;
 scalar_t__ ELEMS_PER_PAGE (int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_chain_alloc_sanity_check(struct ecore_dev *p_dev,
          enum ecore_chain_cnt_type cnt_type,
          osal_size_t elem_size, u32 page_cnt)
{
 u64 chain_size = ELEMS_PER_PAGE(elem_size) * page_cnt;







 if ((cnt_type == ECORE_CHAIN_CNT_TYPE_U16 &&
      chain_size > ((u32)ECORE_U16_MAX + 1)) ||
     (cnt_type == ECORE_CHAIN_CNT_TYPE_U32 &&
      chain_size > ECORE_U32_MAX)) {
  DP_NOTICE(p_dev, 1,
     "The actual chain size (0x%llx) is larger than the maximal possible value\n",
     (unsigned long long)chain_size);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
