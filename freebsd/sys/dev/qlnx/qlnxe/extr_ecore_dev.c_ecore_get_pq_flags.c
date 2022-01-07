
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int personality; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int p_dev; } ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;





 scalar_t__ IS_ECORE_DCQCN (struct ecore_hwfn*) ;
 scalar_t__ IS_ECORE_SRIOV (int ) ;
 int PQ_FLAGS_ACK ;
 int PQ_FLAGS_LB ;
 int PQ_FLAGS_LLT ;
 int PQ_FLAGS_MCOS ;
 int PQ_FLAGS_OFLD ;
 int PQ_FLAGS_OOO ;
 int PQ_FLAGS_RLS ;
 int PQ_FLAGS_VFS ;

__attribute__((used)) static u32 ecore_get_pq_flags(struct ecore_hwfn *p_hwfn)
{
 u32 flags;


 flags = PQ_FLAGS_LB;


 if (IS_ECORE_SRIOV(p_hwfn->p_dev))
  flags |= PQ_FLAGS_VFS;
 if (IS_ECORE_DCQCN(p_hwfn))
  flags |= PQ_FLAGS_RLS;


 switch (p_hwfn->hw_info.personality) {
 case 132:
  flags |= PQ_FLAGS_MCOS;
  break;
 case 129:
  flags |= PQ_FLAGS_OFLD;
  break;
 case 128:
  flags |= PQ_FLAGS_ACK | PQ_FLAGS_OOO | PQ_FLAGS_OFLD;
  break;
 case 130:
  flags |= PQ_FLAGS_MCOS | PQ_FLAGS_OFLD | PQ_FLAGS_LLT;
  break;
 case 131:
  flags |= PQ_FLAGS_MCOS | PQ_FLAGS_ACK | PQ_FLAGS_OOO | PQ_FLAGS_OFLD;
  break;
 default:
  DP_ERR(p_hwfn, "unknown personality %d\n", p_hwfn->hw_info.personality);
  return 0;
 }

 return flags;
}
