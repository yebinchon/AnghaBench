
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ subtype; int kidx; } ;
struct table_config {int astate; TYPE_1__ no; struct table_algo* ta; } ;
struct table_algo {int (* foreach ) (int ,int ,int ,struct dump_args*) ;} ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int cnt; int ti; int size; int * ent; struct table_config* tc; struct ip_fw_chain* ch; } ;
struct TYPE_5__ {int cnt; int size; int * ent; } ;
typedef TYPE_2__ ipfw_table ;
typedef int da ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 scalar_t__ IPFW_TABLE_ADDR ;
 int KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int dump_table_entry ;
 struct table_config* find_table (int ,struct tid_info*) ;
 int memset (struct dump_args*,int ,int) ;
 int stub1 (int ,int ,int ,struct dump_args*) ;

int
ipfw_dump_table_legacy(struct ip_fw_chain *ch, struct tid_info *ti,
    ipfw_table *tbl)
{
 struct table_config *tc;
 struct table_algo *ta;
 struct dump_args da;

 tbl->cnt = 0;

 if ((tc = find_table(CHAIN_TO_NI(ch), ti)) == ((void*)0))
  return (0);

 ta = tc->ta;


 if (tc->no.subtype != IPFW_TABLE_ADDR)
  return (0);

 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.ti = KIDX_TO_TI(ch, tc->no.kidx);
 da.tc = tc;
 da.ent = &tbl->ent[0];
 da.size = tbl->size;

 tbl->cnt = 0;
 ta->foreach(tc->astate, da.ti, dump_table_entry, &da);
 tbl->cnt = da.cnt;

 return (0);
}
