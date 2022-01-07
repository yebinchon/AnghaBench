
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tid_info {scalar_t__ uidx; int tlen; int * tlvs; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ipfw_obj_ntlv ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int DYN_DEBUG (char*,scalar_t__) ;
 int EINVAL ;
 int IPFW_TLV_STATE_NAME ;
 char* default_state_name ;
 TYPE_1__* ipfw_find_name_tlv_type (int *,int ,scalar_t__,int ) ;
 struct named_object* ipfw_objhash_lookup_name_type (int ,int ,int ,char const*) ;

__attribute__((used)) static int
dyn_findbyname(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
 ipfw_obj_ntlv *ntlv;
 const char *name;

 DYN_DEBUG("uidx %d", ti->uidx);
 if (ti->uidx != 0) {
  if (ti->tlvs == ((void*)0))
   return (EINVAL);

  ntlv = ipfw_find_name_tlv_type(ti->tlvs, ti->tlen, ti->uidx,
      IPFW_TLV_STATE_NAME);
  if (ntlv == ((void*)0))
   return (EINVAL);
  name = ntlv->name;
 } else
  name = default_state_name;





 *pno = ipfw_objhash_lookup_name_type(CHAIN_TO_SRV(ch), 0,
     IPFW_TLV_STATE_NAME, name);





 return (0);
}
