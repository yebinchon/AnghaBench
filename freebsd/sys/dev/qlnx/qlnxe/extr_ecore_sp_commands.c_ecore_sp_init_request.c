
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_8__ {void* function; TYPE_3__* cookie; } ;
struct TYPE_7__ {scalar_t__ done; } ;
struct TYPE_5__ {void* protocol_id; void* cmd_id; int cid; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct ecore_spq_entry {int comp_mode; int ramrod; TYPE_4__ comp_cb; TYPE_3__ comp_done; int priority; TYPE_2__ elem; } ;
struct ecore_sp_init_data {int opaque_fid; int cid; int comp_mode; TYPE_4__* p_comp_data; } ;
struct ecore_hwfn {int dummy; } ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,void*,void*,unsigned long long,int ) ;
 int D_TRINE (int,int const,int const,char*,char*,char*) ;
 int ECORE_INVAL ;
 int ECORE_MSG_SPQ ;



 int ECORE_SPQ_PRIORITY_NORMAL ;
 int ECORE_SUCCESS ;
 int OSAL_CPU_TO_LE32 (int) ;
 int OSAL_MEMSET (int *,int ,int) ;
 void* OSAL_NULL ;
 int ecore_spq_get_entry (struct ecore_hwfn*,struct ecore_spq_entry**) ;

enum _ecore_status_t ecore_sp_init_request(struct ecore_hwfn *p_hwfn,
        struct ecore_spq_entry **pp_ent,
        u8 cmd,
        u8 protocol,
        struct ecore_sp_init_data *p_data)
{
 u32 opaque_cid = p_data->opaque_fid << 16 | p_data->cid;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 enum _ecore_status_t rc;

 if (!pp_ent)
  return ECORE_INVAL;


 rc = ecore_spq_get_entry(p_hwfn, pp_ent);
 if (rc != ECORE_SUCCESS)
  return rc;


 p_ent = *pp_ent;
 p_ent->elem.hdr.cid = OSAL_CPU_TO_LE32(opaque_cid);
 p_ent->elem.hdr.cmd_id = cmd;
 p_ent->elem.hdr.protocol_id = protocol;
 p_ent->priority = ECORE_SPQ_PRIORITY_NORMAL;
 p_ent->comp_mode = p_data->comp_mode;
 p_ent->comp_done.done = 0;

 switch (p_ent->comp_mode) {
 case 128:
  p_ent->comp_cb.cookie = &p_ent->comp_done;
  break;

 case 130:
  if (!p_data->p_comp_data)
   return ECORE_INVAL;

  p_ent->comp_cb.cookie = p_data->p_comp_data->cookie;
  break;

 case 129:
  if (!p_data->p_comp_data)
   p_ent->comp_cb.function = OSAL_NULL;
  else
   p_ent->comp_cb = *p_data->p_comp_data;
  break;

 default:
  DP_NOTICE(p_hwfn, 1, "Unknown SPQE completion mode %d\n",
     p_ent->comp_mode);
  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
     "Initialized: CID %08x cmd %02x protocol %02x data_addr %llx comp_mode [%s]\n",
     opaque_cid, cmd, protocol,
     (unsigned long long)(osal_uintptr_t)&p_ent->ramrod,
     D_TRINE(p_ent->comp_mode, 128,
      130, "MODE_EBLOCK", "MODE_BLOCK",
      "MODE_CB"));

 OSAL_MEMSET(&p_ent->ramrod, 0, sizeof(p_ent->ramrod));

 return ECORE_SUCCESS;
}
