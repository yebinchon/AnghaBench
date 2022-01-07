
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_2__* p_cxt_mngr; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
struct TYPE_4__ {TYPE_1__* acquired; } ;
struct TYPE_3__ {int start_cid; } ;



u32 ecore_cxt_get_proto_cid_start(struct ecore_hwfn *p_hwfn,
      enum protocol_type type)
{
 return p_hwfn->p_cxt_mngr->acquired[type].start_cid;
}
