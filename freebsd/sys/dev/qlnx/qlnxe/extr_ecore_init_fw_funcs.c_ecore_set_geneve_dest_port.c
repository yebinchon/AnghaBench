
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int NIG_REG_NGE_PORT ;
 int PBF_REG_NGE_PORT ;
 int PRS_REG_NGE_PORT ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

void ecore_set_geneve_dest_port(struct ecore_hwfn *p_hwfn,
 struct ecore_ptt *p_ptt,
 u16 dest_port)

{

 ecore_wr(p_hwfn, p_ptt, PRS_REG_NGE_PORT, dest_port);


 ecore_wr(p_hwfn, p_ptt, NIG_REG_NGE_PORT, dest_port);


 ecore_wr(p_hwfn, p_ptt, PBF_REG_NGE_PORT, dest_port);
}
