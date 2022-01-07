
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slb {int dummy; } ;


 int M_ZERO ;
 int slb_cache_zone ;
 struct slb** uma_zalloc (int ,int ) ;

struct slb **
slb_alloc_user_cache(void)
{
 return (uma_zalloc(slb_cache_zone, M_ZERO));
}
