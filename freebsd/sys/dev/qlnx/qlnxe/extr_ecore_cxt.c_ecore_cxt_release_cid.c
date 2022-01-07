
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int ECORE_CXT_PF_CID ;
 int _ecore_cxt_release_cid (struct ecore_hwfn*,int ,int ) ;

void ecore_cxt_release_cid(struct ecore_hwfn *p_hwfn, u32 cid)
{
 _ecore_cxt_release_cid(p_hwfn, cid, ECORE_CXT_PF_CID);
}
