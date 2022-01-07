
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_hwfn {TYPE_1__* p_dcbx_info; } ;
struct TYPE_2__ {scalar_t__ iwarp_port; } ;


 int DCBX_APP_SF_IEEE_TCP_PORT ;
 int ecore_dcbx_app_port (int ) ;
 int ecore_dcbx_ieee_app_port (int ,int ) ;

__attribute__((used)) static bool ecore_dcbx_iwarp_tlv(struct ecore_hwfn *p_hwfn, u32 app_info_bitmap,
     u16 proto_id, bool ieee)
{
 bool port;

 if (!p_hwfn->p_dcbx_info->iwarp_port)
  return 0;

 if (ieee)
  port = ecore_dcbx_ieee_app_port(app_info_bitmap,
      DCBX_APP_SF_IEEE_TCP_PORT);
 else
  port = ecore_dcbx_app_port(app_info_bitmap);

 return !!(port && (proto_id == p_hwfn->p_dcbx_info->iwarp_port));
}
