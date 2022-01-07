
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_config {int astate; struct table_algo* ta; } ;
struct table_algo {int (* dump_tentry ) (int ,int ,void*,int *) ;} ;
struct dump_args {int farg; int tent; int (* f ) (int *,int ) ;int ti; struct table_config* tc; } ;


 int stub1 (int ,int ,void*,int *) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static int
prepare_table_tentry(void *e, void *arg)
{
 struct dump_args *da;
 struct table_config *tc;
 struct table_algo *ta;
 int error;

 da = (struct dump_args *)arg;

 tc = da->tc;
 ta = tc->ta;

 error = ta->dump_tentry(tc->astate, da->ti, e, &da->tent);
 if (error != 0)
  return (error);

 da->f(&da->tent, da->farg);

 return (0);
}
