
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_CXT_PF_CID ;
 int _ecore_cxt_acquire_cid (struct ecore_hwfn*,int,int *,int ) ;

enum _ecore_status_t ecore_cxt_acquire_cid(struct ecore_hwfn *p_hwfn,
        enum protocol_type type,
        u32 *p_cid)
{
 return _ecore_cxt_acquire_cid(p_hwfn, type, p_cid, ECORE_CXT_PF_CID);
}
