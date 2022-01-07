
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tid_info {int type; int uidx; int tlen; int * tlvs; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ ipfw_obj_ntlv ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EACTION_DEBUG (char*,int ,int ,int ) ;
 int EINVAL ;
 int ESRCH ;
 int IPFW_TLV_EACTION ;
 TYPE_1__* ipfw_find_name_tlv_type (int *,int ,int ,int ) ;
 struct named_object* ipfw_objhash_lookup_name_type (int ,int ,int ,int ) ;

__attribute__((used)) static int
eaction_findbyname(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
 ipfw_obj_ntlv *ntlv;

 if (ti->tlvs == ((void*)0))
  return (EINVAL);


 ntlv = ipfw_find_name_tlv_type(ti->tlvs, ti->tlen, ti->uidx,
     IPFW_TLV_EACTION);
 if (ntlv == ((void*)0))
  return (EINVAL);
 EACTION_DEBUG("name %s, uidx %u, type %u", ntlv->name,
     ti->uidx, ti->type);





 *pno = ipfw_objhash_lookup_name_type(CHAIN_TO_SRV(ch),
     0, IPFW_TLV_EACTION, ntlv->name);
 if (*pno == ((void*)0))
  return (ESRCH);
 return (0);
}
