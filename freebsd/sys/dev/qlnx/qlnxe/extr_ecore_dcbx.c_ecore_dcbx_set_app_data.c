
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_params {int num_app_entries; TYPE_2__* app_entry; scalar_t__ app_valid; scalar_t__ app_willing; } ;
struct dcbx_app_priority_feature {int flags; TYPE_1__* app_pri_tbl; } ;
struct TYPE_4__ {int sf_ieee; int prio; scalar_t__ proto_id; scalar_t__ ethtype; } ;
struct TYPE_3__ {int entry; } ;


 int DCBX_APP_ENABLED_MASK ;
 int DCBX_APP_NUM_ENTRIES_MASK ;
 int DCBX_APP_NUM_ENTRIES_OFFSET ;
 int DCBX_APP_PRI_MAP_MASK ;
 int DCBX_APP_PRI_MAP_OFFSET ;
 int DCBX_APP_PROTOCOL_ID_MASK ;
 int DCBX_APP_PROTOCOL_ID_OFFSET ;
 scalar_t__ DCBX_APP_SF_ETHTYPE ;
 scalar_t__ DCBX_APP_SF_IEEE_ETHTYPE ;
 int DCBX_APP_SF_IEEE_MASK ;
 int DCBX_APP_SF_IEEE_OFFSET ;
 scalar_t__ DCBX_APP_SF_IEEE_TCP_PORT ;
 scalar_t__ DCBX_APP_SF_IEEE_TCP_UDP_PORT ;
 scalar_t__ DCBX_APP_SF_IEEE_UDP_PORT ;
 int DCBX_APP_SF_MASK ;
 int DCBX_APP_SF_OFFSET ;
 scalar_t__ DCBX_APP_SF_PORT ;
 int DCBX_APP_WILLING_MASK ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;




 int ECORE_MSG_DCB ;

__attribute__((used)) static void
ecore_dcbx_set_app_data(struct ecore_hwfn *p_hwfn,
   struct dcbx_app_priority_feature *p_app,
   struct ecore_dcbx_params *p_params, bool ieee)
{
 u32 *entry;
 int i;

 if (p_params->app_willing)
  p_app->flags |= DCBX_APP_WILLING_MASK;
 else
  p_app->flags &= ~DCBX_APP_WILLING_MASK;

 if (p_params->app_valid)
  p_app->flags |= DCBX_APP_ENABLED_MASK;
 else
  p_app->flags &= ~DCBX_APP_ENABLED_MASK;

 p_app->flags &= ~DCBX_APP_NUM_ENTRIES_MASK;
 p_app->flags |= (u32)p_params->num_app_entries <<
   DCBX_APP_NUM_ENTRIES_OFFSET;

 for (i = 0; i < p_params->num_app_entries; i++) {
  entry = &p_app->app_pri_tbl[i].entry;
  *entry = 0;
  if (ieee) {
   *entry &= ~(DCBX_APP_SF_IEEE_MASK | DCBX_APP_SF_MASK);
   switch (p_params->app_entry[i].sf_ieee) {
   case 131:
    *entry |= ((u32)DCBX_APP_SF_IEEE_ETHTYPE <<
         DCBX_APP_SF_IEEE_OFFSET);
    *entry |= ((u32)DCBX_APP_SF_ETHTYPE <<
         DCBX_APP_SF_OFFSET);
    break;
   case 130:
    *entry |= ((u32)DCBX_APP_SF_IEEE_TCP_PORT <<
         DCBX_APP_SF_IEEE_OFFSET);
    *entry |= ((u32)DCBX_APP_SF_PORT <<
         DCBX_APP_SF_OFFSET);
    break;
   case 128:
    *entry |= ((u32)DCBX_APP_SF_IEEE_UDP_PORT <<
         DCBX_APP_SF_IEEE_OFFSET);
    *entry |= ((u32)DCBX_APP_SF_PORT <<
         DCBX_APP_SF_OFFSET);
    break;
   case 129:
    *entry |= (u32)DCBX_APP_SF_IEEE_TCP_UDP_PORT <<
         DCBX_APP_SF_IEEE_OFFSET;
    *entry |= ((u32)DCBX_APP_SF_PORT <<
         DCBX_APP_SF_OFFSET);
    break;
   }
  } else {
   *entry &= ~DCBX_APP_SF_MASK;
   if (p_params->app_entry[i].ethtype)
    *entry |= ((u32)DCBX_APP_SF_ETHTYPE <<
         DCBX_APP_SF_OFFSET);
   else
    *entry |= ((u32)DCBX_APP_SF_PORT <<
         DCBX_APP_SF_OFFSET);
  }
  *entry &= ~DCBX_APP_PROTOCOL_ID_MASK;
  *entry |= ((u32)p_params->app_entry[i].proto_id <<
      DCBX_APP_PROTOCOL_ID_OFFSET);
  *entry &= ~DCBX_APP_PRI_MAP_MASK;
  *entry |= ((u32)(1 << p_params->app_entry[i].prio) <<
      DCBX_APP_PRI_MAP_OFFSET);
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB, "flags = 0x%x\n", p_app->flags);
}
