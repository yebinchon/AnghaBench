
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_params {int num_app_entries; void* app_error; void* app_valid; void* app_willing; struct ecore_app_entry* app_entry; } ;
struct ecore_app_entry {int ethtype; int proto_type; void* proto_id; int prio; void* sf_ieee; } ;
struct dcbx_app_priority_feature {int flags; } ;
struct dcbx_app_priority_entry {int entry; } ;


 int DCBX_APP_ENABLED ;
 int DCBX_APP_ERROR ;
 int DCBX_APP_NUM_ENTRIES ;
 int DCBX_APP_PRI_MAP ;
 int DCBX_APP_PROTOCOL_ID ;
 int DCBX_APP_SF ;
 int DCBX_APP_SF_IEEE ;





 int DCBX_APP_WILLING ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,void*,void*,void*) ;
 void* ECORE_DCBX_SF_IEEE_ETHTYPE ;
 void* ECORE_DCBX_SF_IEEE_TCP_PORT ;
 void* ECORE_DCBX_SF_IEEE_TCP_UDP_PORT ;
 void* ECORE_DCBX_SF_IEEE_UDP_PORT ;
 int ECORE_MSG_DCB ;
 void* GET_MFW_FIELD (int ,int ) ;
 int ecore_dcbx_get_app_priority (int,int *) ;
 int ecore_dcbx_get_app_protocol_type (struct ecore_hwfn*,int ,void*,int *,int) ;

__attribute__((used)) static void
ecore_dcbx_get_app_data(struct ecore_hwfn *p_hwfn,
   struct dcbx_app_priority_feature *p_app,
   struct dcbx_app_priority_entry *p_tbl,
   struct ecore_dcbx_params *p_params, bool ieee)
{
 struct ecore_app_entry *entry;
 u8 pri_map;
 int i;

 p_params->app_willing = GET_MFW_FIELD(p_app->flags, DCBX_APP_WILLING);
 p_params->app_valid = GET_MFW_FIELD(p_app->flags, DCBX_APP_ENABLED);
 p_params->app_error = GET_MFW_FIELD(p_app->flags, DCBX_APP_ERROR);
 p_params->num_app_entries = GET_MFW_FIELD(p_app->flags,
        DCBX_APP_NUM_ENTRIES);
 for (i = 0; i < p_params->num_app_entries; i++) {
  entry = &p_params->app_entry[i];
  if (ieee) {
   u8 sf_ieee;
   u32 val;

   sf_ieee = GET_MFW_FIELD(p_tbl[i].entry,
      DCBX_APP_SF_IEEE);
   switch (sf_ieee) {
   case 131:

    val = GET_MFW_FIELD(p_tbl[i].entry,
          DCBX_APP_SF);
    entry->sf_ieee = val ?
     ECORE_DCBX_SF_IEEE_TCP_UDP_PORT :
     ECORE_DCBX_SF_IEEE_ETHTYPE;
    break;
   case 132:
    entry->sf_ieee = ECORE_DCBX_SF_IEEE_ETHTYPE;
    break;
   case 130:
    entry->sf_ieee = ECORE_DCBX_SF_IEEE_TCP_PORT;
    break;
   case 128:
    entry->sf_ieee = ECORE_DCBX_SF_IEEE_UDP_PORT;
    break;
   case 129:
    entry->sf_ieee = ECORE_DCBX_SF_IEEE_TCP_UDP_PORT;
    break;
   }
  } else {
   entry->ethtype = !(GET_MFW_FIELD(p_tbl[i].entry,
        DCBX_APP_SF));
  }

  pri_map = GET_MFW_FIELD(p_tbl[i].entry, DCBX_APP_PRI_MAP);
  ecore_dcbx_get_app_priority(pri_map, &entry->prio);
  entry->proto_id = GET_MFW_FIELD(p_tbl[i].entry,
      DCBX_APP_PROTOCOL_ID);
  ecore_dcbx_get_app_protocol_type(p_hwfn, p_tbl[i].entry,
       entry->proto_id,
       &entry->proto_type, ieee);
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB,
     "APP params: willing %d, valid %d error = %d\n",
     p_params->app_willing, p_params->app_valid,
     p_params->app_error);
}
