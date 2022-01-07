
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int ILT_CLI_TSDM ;
 int SRQ_CXT_SIZE ;
 int ecore_cxt_get_ilt_page_size (struct ecore_hwfn*,int ) ;

__attribute__((used)) static u32 ecore_cxt_srqs_per_page(struct ecore_hwfn *p_hwfn)
{
 u32 page_size;

 page_size = ecore_cxt_get_ilt_page_size(p_hwfn, ILT_CLI_TSDM);
 return page_size / SRQ_CXT_SIZE;
}
