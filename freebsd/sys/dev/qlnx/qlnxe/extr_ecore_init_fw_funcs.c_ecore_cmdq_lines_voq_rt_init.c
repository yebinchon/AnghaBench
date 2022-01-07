
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_hwfn {int dummy; } ;


 int OVERWRITE_RT_REG (struct ecore_hwfn*,int ,int ) ;
 int PBF_CMDQ_LINES_RT_OFFSET (scalar_t__) ;
 scalar_t__ QM_REG_VOQCRDLINE_RT_OFFSET ;
 scalar_t__ QM_REG_VOQINITCRDLINE_RT_OFFSET ;
 int QM_VOQ_LINE_CRD (scalar_t__) ;
 int STORE_RT_REG (struct ecore_hwfn*,scalar_t__,int ) ;

__attribute__((used)) static void ecore_cmdq_lines_voq_rt_init(struct ecore_hwfn *p_hwfn,
           u8 ext_voq,
           u16 cmdq_lines)
{
 u32 qm_line_crd;

 qm_line_crd = QM_VOQ_LINE_CRD(cmdq_lines);

 OVERWRITE_RT_REG(p_hwfn, PBF_CMDQ_LINES_RT_OFFSET(ext_voq), (u32)cmdq_lines);
 STORE_RT_REG(p_hwfn, QM_REG_VOQCRDLINE_RT_OFFSET + ext_voq, qm_line_crd);
 STORE_RT_REG(p_hwfn, QM_REG_VOQINITCRDLINE_RT_OFFSET + ext_voq, qm_line_crd);
}
