
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_chinfo {int dummy; } ;
typedef int kobj_t ;






 int aggch_start_dac (struct agg_chinfo*) ;
 int aggch_stop_dac (struct agg_chinfo*) ;

__attribute__((used)) static int
aggpch_trigger(kobj_t obj, void *data, int go)
{
 struct agg_chinfo *ch = data;

 switch (go) {
 case 130:
  break;
 case 129:
  aggch_start_dac(ch);
  break;
 case 131:
 case 128:
  aggch_stop_dac(ch);
  break;
 }
 return 0;
}
