
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int dummy; } ;
typedef int kobj_t ;


 int agg_wrcodec (struct agg_info*,int,int ) ;

__attribute__((used)) static int
agg_ac97_write(kobj_t obj, void *sc, int regno, u_int32_t data)
{
 struct agg_info *ess = sc;
 int ret;


 ret = agg_wrcodec(ess, regno, data);

 return ret;
}
