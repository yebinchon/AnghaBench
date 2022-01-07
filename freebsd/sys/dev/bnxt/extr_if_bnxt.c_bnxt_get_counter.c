
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ift_counter ;
typedef int if_t ;
typedef int if_ctx_t ;


 int IFCOUNTERS ;
 int if_get_counter_default (int ,int ) ;
 int iflib_get_ifp (int ) ;

__attribute__((used)) static uint64_t
bnxt_get_counter(if_ctx_t ctx, ift_counter cnt)
{
 if_t ifp = iflib_get_ifp(ctx);

 if (cnt < IFCOUNTERS)
  return if_get_counter_default(ifp, cnt);

 return 0;
}
