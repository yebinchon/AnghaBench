
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_bmap {scalar_t__ max_count; int bitmap; int name; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,scalar_t__,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,scalar_t__) ;
 int ECORE_MSG_RDMA ;
 int OSAL_TEST_BIT (scalar_t__,int ) ;

int ecore_bmap_test_id(struct ecore_hwfn *p_hwfn,
         struct ecore_bmap *bmap,
         u32 id_num)
{
 if (id_num >= bmap->max_count) {
  DP_NOTICE(p_hwfn, 1,
     "%s bitmap: id %d too high. max is %d\n",
     bmap->name, id_num, bmap->max_count);
  return -1;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "%s bitmap: tested id %d\n",
     bmap->name, id_num);

 return OSAL_TEST_BIT(id_num, bmap->bitmap);
}
