
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct TYPE_5__ {int kidx; int refcnt; int set; int subtype; } ;
struct table_config {scalar_t__ locked; int astate; struct table_algo* ta; TYPE_1__ no; int tablename; int limit; int vmask; int tflags; } ;
struct table_algo {int (* dump_tinfo ) (int ,struct table_info*,TYPE_3__*) ;int name; int (* print_config ) (int ,struct table_info*,int ,int) ;} ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int count; int size; TYPE_3__ ta_info; int algoname; int tablename; int flags; int limit; int refcnt; int kidx; int set; int vmask; int tflags; int type; } ;
typedef TYPE_2__ ipfw_xtable_info ;
typedef int ipfw_obj_tentry ;
typedef int ipfw_obj_header ;


 int IPFW_TATFLAGS_DATA ;
 int IPFW_TGFLAGS_LOCKED ;
 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (int ,struct table_info*,int ,int) ;
 int stub2 (int ,struct table_info*,TYPE_3__*) ;
 int table_get_count (struct ip_fw_chain*,struct table_config*) ;

__attribute__((used)) static void
export_table_info(struct ip_fw_chain *ch, struct table_config *tc,
    ipfw_xtable_info *i)
{
 struct table_info *ti;
 struct table_algo *ta;

 i->type = tc->no.subtype;
 i->tflags = tc->tflags;
 i->vmask = tc->vmask;
 i->set = tc->no.set;
 i->kidx = tc->no.kidx;
 i->refcnt = tc->no.refcnt;
 i->count = table_get_count(ch, tc);
 i->limit = tc->limit;
 i->flags |= (tc->locked != 0) ? IPFW_TGFLAGS_LOCKED : 0;
 i->size = i->count * sizeof(ipfw_obj_tentry);
 i->size += sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info);
 strlcpy(i->tablename, tc->tablename, sizeof(i->tablename));
 ti = KIDX_TO_TI(ch, tc->no.kidx);
 ta = tc->ta;
 if (ta->print_config != ((void*)0)) {

  ta->print_config(tc->astate, ti, i->algoname,
      sizeof(i->algoname));
 } else
  strlcpy(i->algoname, ta->name, sizeof(i->algoname));

 if (ta->dump_tinfo != ((void*)0)) {
  ta->dump_tinfo(tc->astate, ti, &i->ta_info);
  i->ta_info.flags |= IPFW_TATFLAGS_DATA;
 }
}
