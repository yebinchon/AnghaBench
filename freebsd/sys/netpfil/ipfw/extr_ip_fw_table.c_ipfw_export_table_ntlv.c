
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int name; int kidx; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int length; int type; } ;
struct TYPE_4__ {int name; int idx; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int ENOMEM ;
 int IPFW_TLV_TBL_NAME ;
 int KASSERT (int ,char*) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;
 int strlcpy (int ,int ,int) ;

int
ipfw_export_table_ntlv(struct ip_fw_chain *ch, uint16_t kidx,
    struct sockopt_data *sd)
{
 struct namedobj_instance *ni;
 struct named_object *no;
 ipfw_obj_ntlv *ntlv;

 ni = CHAIN_TO_NI(ch);

 no = ipfw_objhash_lookup_kidx(ni, kidx);
 KASSERT(no != ((void*)0), ("invalid table kidx passed"));

 ntlv = (ipfw_obj_ntlv *)ipfw_get_sopt_space(sd, sizeof(*ntlv));
 if (ntlv == ((void*)0))
  return (ENOMEM);

 ntlv->head.type = IPFW_TLV_TBL_NAME;
 ntlv->head.length = sizeof(*ntlv);
 ntlv->idx = no->kidx;
 strlcpy(ntlv->name, no->name, sizeof(ntlv->name));

 return (0);
}
