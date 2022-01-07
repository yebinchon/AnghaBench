
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_value {int dummy; } ;
struct table_config {int astate; struct table_algo* ta; } ;
struct table_algo {int (* dump_tentry ) (int ,int ,void*,TYPE_3__*) ;} ;
struct dump_args {struct table_config* tc; int ch; int ti; int uidx; int error; int sd; } ;
struct TYPE_6__ {int value; int kidx; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_7__ {TYPE_2__ v; int idx; TYPE_1__ head; } ;
typedef TYPE_3__ ipfw_obj_tentry ;


 int ENOMEM ;
 struct table_value* get_table_value (int ,struct table_config*,int ) ;
 int ipfw_export_table_value_v1 (struct table_value*,int *) ;
 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int stub1 (int ,int ,void*,TYPE_3__*) ;

__attribute__((used)) static int
dump_table_tentry(void *e, void *arg)
{
 struct dump_args *da;
 struct table_config *tc;
 struct table_algo *ta;
 struct table_value *pval;
 ipfw_obj_tentry *tent;
 int error;

 da = (struct dump_args *)arg;

 tc = da->tc;
 ta = tc->ta;

 tent = (ipfw_obj_tentry *)ipfw_get_sopt_space(da->sd, sizeof(*tent));

 if (tent == ((void*)0)) {
  da->error = ENOMEM;
  return (1);
 }
 tent->head.length = sizeof(ipfw_obj_tentry);
 tent->idx = da->uidx;

 error = ta->dump_tentry(tc->astate, da->ti, e, tent);
 if (error != 0)
  return (error);

 pval = get_table_value(da->ch, da->tc, tent->v.kidx);
 ipfw_export_table_value_v1(pval, &tent->v.value);

 return (0);
}
