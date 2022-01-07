
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ta_foreach_f ;
struct TYPE_2__ {int kidx; } ;
struct table_config {int astate; TYPE_1__ no; struct table_algo* ta; } ;
struct table_algo {int (* foreach ) (int ,int ,int ,struct dump_args*) ;} ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int ti; void* farg; int * f; struct table_config* tc; struct ip_fw_chain* ch; } ;
typedef int da ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int ESRCH ;
 int KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 scalar_t__ ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;
 int memset (struct dump_args*,int ,int) ;
 int prepare_table_tentry ;
 int stub1 (int ,int ,int ,struct dump_args*) ;

int
ipfw_foreach_table_tentry(struct ip_fw_chain *ch, uint16_t kidx,
    ta_foreach_f *f, void *arg)
{
 struct namedobj_instance *ni;
 struct table_config *tc;
 struct table_algo *ta;
 struct dump_args da;

 ni = CHAIN_TO_NI(ch);

 tc = (struct table_config *)ipfw_objhash_lookup_kidx(ni, kidx);
 if (tc == ((void*)0))
  return (ESRCH);

 ta = tc->ta;

 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.ti = KIDX_TO_TI(ch, tc->no.kidx);
 da.tc = tc;
 da.f = f;
 da.farg = arg;

 ta->foreach(tc->astate, da.ti, prepare_table_tentry, &da);

 return (0);
}
