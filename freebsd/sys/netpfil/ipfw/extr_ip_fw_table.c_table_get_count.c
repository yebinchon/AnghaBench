
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct table_info {int dummy; } ;
struct TYPE_2__ {int kidx; } ;
struct table_config {int astate; int count; struct table_algo* ta; TYPE_1__ no; } ;
struct table_algo {int flags; int (* foreach ) (int ,struct table_info*,int ,struct dump_args*) ;int (* get_count ) (int ,struct table_info*) ;} ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int cnt; } ;
typedef int da ;


 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int TA_FLAG_EXTCOUNTER ;
 int TA_FLAG_READONLY ;
 int count_ext_entries ;
 int memset (struct dump_args*,int ,int) ;
 int stub1 (int ,struct table_info*) ;
 int stub2 (int ,struct table_info*,int ,struct dump_args*) ;

__attribute__((used)) static uint32_t
table_get_count(struct ip_fw_chain *ch, struct table_config *tc)
{
 struct table_info *ti;
 struct table_algo *ta;
 struct dump_args da;

 ti = KIDX_TO_TI(ch, tc->no.kidx);
 ta = tc->ta;


 if ((ta->flags & TA_FLAG_READONLY) == 0)
  return (tc->count);


 if ((ta->flags & TA_FLAG_EXTCOUNTER) != 0)
  return (ta->get_count(tc->astate, ti));


 memset(&da, 0, sizeof(da));
 ta->foreach(tc->astate, ti, count_ext_entries, &da);

 return (da.cnt);
}
