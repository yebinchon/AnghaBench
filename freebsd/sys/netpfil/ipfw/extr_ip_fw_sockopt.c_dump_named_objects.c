
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int tcount; int bmask; } ;
typedef int ipfw_obj_ntlv ;
struct TYPE_3__ {int length; int type; } ;
struct TYPE_4__ {int count; int objsize; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ctlv ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int ENOMEM ;
 int IPFW_TABLES_MAX ;
 int IPFW_TLV_TBLNAME_LIST ;
 int MPASS (int) ;
 int export_named_objects (int ,struct dump_args*,struct sockopt_data*) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 int ipfw_get_table_objhash (struct ip_fw_chain*) ;

__attribute__((used)) static int
dump_named_objects(struct ip_fw_chain *ch, struct dump_args *da,
    struct sockopt_data *sd)
{
 ipfw_obj_ctlv *ctlv;
 int error;

 MPASS(da->tcount > 0);

 ctlv = (ipfw_obj_ctlv *)ipfw_get_sopt_space(sd, sizeof(*ctlv));
 if (ctlv == ((void*)0))
  return (ENOMEM);
 ctlv->head.type = IPFW_TLV_TBLNAME_LIST;
 ctlv->head.length = da->tcount * sizeof(ipfw_obj_ntlv) +
     sizeof(*ctlv);
 ctlv->count = da->tcount;
 ctlv->objsize = sizeof(ipfw_obj_ntlv);


 error = export_named_objects(ipfw_get_table_objhash(ch), da, sd);
 if (error != 0)
  return (error);

 da->bmask += IPFW_TABLES_MAX / 32;
 return (export_named_objects(CHAIN_TO_SRV(ch), da, sd));
}
