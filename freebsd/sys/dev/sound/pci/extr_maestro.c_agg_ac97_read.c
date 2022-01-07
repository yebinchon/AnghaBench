
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int dummy; } ;
typedef int kobj_t ;


 int agg_rdcodec (struct agg_info*,int) ;

__attribute__((used)) static int
agg_ac97_read(kobj_t obj, void *sc, int regno)
{
 struct agg_info *ess = sc;
 int ret;


 ret = agg_rdcodec(ess, regno);

 return ret;
}
