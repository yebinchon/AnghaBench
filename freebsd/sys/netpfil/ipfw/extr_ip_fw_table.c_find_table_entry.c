
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tid_info {scalar_t__ type; int uidx; } ;
struct table_value {int dummy; } ;
struct table_info {int dummy; } ;
struct TYPE_9__ {scalar_t__ subtype; int kidx; } ;
struct table_config {int astate; struct table_algo* ta; TYPE_3__ no; } ;
struct table_algo {int (* find_tentry ) (int ,struct table_info*,TYPE_5__*) ;} ;
struct sockopt_data {size_t valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ head; } ;
struct _ipfw_obj_header {TYPE_2__ ntlv; } ;
struct TYPE_10__ {int value; int kidx; } ;
struct TYPE_11__ {TYPE_4__ v; int idx; } ;
typedef TYPE_5__ ipfw_obj_tentry ;
typedef struct _ipfw_obj_header ipfw_obj_header ;
typedef int ip_fw3_opheader ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOTSUP ;
 int ESRCH ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 struct table_config* find_table (struct namedobj_instance*,struct tid_info*) ;
 struct table_value* get_table_value (struct ip_fw_chain*,struct table_config*,int ) ;
 int ipfw_export_table_value_v1 (struct table_value*,int *) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,size_t) ;
 int objheader_to_ti (struct _ipfw_obj_header*,struct tid_info*) ;
 int stub1 (int ,struct table_info*,TYPE_5__*) ;

__attribute__((used)) static int
find_table_entry(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_tentry *tent;
 ipfw_obj_header *oh;
 struct tid_info ti;
 struct table_config *tc;
 struct table_algo *ta;
 struct table_info *kti;
 struct table_value *pval;
 struct namedobj_instance *ni;
 int error;
 size_t sz;


 sz = sizeof(*oh) + sizeof(*tent);
 if (sd->valsize != sz)
  return (EINVAL);

 oh = (struct _ipfw_obj_header *)ipfw_get_sopt_header(sd, sz);
 tent = (ipfw_obj_tentry *)(oh + 1);


 if (oh->ntlv.head.length != sizeof(oh->ntlv))
  return (EINVAL);

 objheader_to_ti(oh, &ti);
 ti.type = oh->ntlv.type;
 ti.uidx = tent->idx;

 IPFW_UH_RLOCK(ch);
 ni = CHAIN_TO_NI(ch);




 ta = ((void*)0);
 if ((tc = find_table(ni, &ti)) == ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (ESRCH);
 }


 if (tc->no.subtype != ti.type) {
  IPFW_UH_RUNLOCK(ch);
  return (EINVAL);
 }

 kti = KIDX_TO_TI(ch, tc->no.kidx);
 ta = tc->ta;

 if (ta->find_tentry == ((void*)0))
  return (ENOTSUP);

 error = ta->find_tentry(tc->astate, kti, tent);
 if (error == 0) {
  pval = get_table_value(ch, tc, tent->v.kidx);
  ipfw_export_table_value_v1(pval, &tent->v.value);
 }
 IPFW_UH_RUNLOCK(ch);

 return (error);
}
