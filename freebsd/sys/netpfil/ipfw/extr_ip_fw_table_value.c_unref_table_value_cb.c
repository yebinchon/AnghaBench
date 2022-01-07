
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_value {int dummy; } ;
struct table_algo {int (* dump_tentry ) (int ,int ,void*,TYPE_2__*) ;} ;
struct ip_fw_chain {scalar_t__ valuestate; } ;
struct TYPE_5__ {int kidx; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
struct flush_args {struct ip_fw_chain* ch; int ti; int astate; TYPE_2__ tent; struct table_algo* ta; } ;
typedef TYPE_2__ ipfw_obj_tentry ;


 int CHAIN_TO_VI (struct ip_fw_chain*) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ,int ,void*,TYPE_2__*) ;
 int unref_table_value (int ,struct table_value*,int ) ;

__attribute__((used)) static int
unref_table_value_cb(void *e, void *arg)
{
 struct flush_args *fa;
 struct ip_fw_chain *ch;
 struct table_algo *ta;
 ipfw_obj_tentry *tent;
 int error;

 fa = (struct flush_args *)arg;

 ta = fa->ta;
 memset(&fa->tent, 0, sizeof(fa->tent));
 tent = &fa->tent;
 error = ta->dump_tentry(fa->astate, fa->ti, e, tent);
 if (error != 0)
  return (error);

 ch = fa->ch;

 unref_table_value(CHAIN_TO_VI(ch),
     (struct table_value *)ch->valuestate, tent->v.kidx);

 return (0);
}
