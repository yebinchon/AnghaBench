
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slb {int dummy; } ;


 int slb_cache_zone ;
 int uma_zfree (int ,struct slb**) ;

void
slb_free_user_cache(struct slb **slb)
{
 uma_zfree(slb_cache_zone, slb);
}
