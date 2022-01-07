
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ift_counter ;
typedef int if_t ;
typedef int if_ctx_t ;


 int IFDI_GET_COUNTER (int ,int ) ;
 int if_getsoftc (int ) ;

__attribute__((used)) static uint64_t
iflib_if_get_counter(if_t ifp, ift_counter cnt)
{
 if_ctx_t ctx = if_getsoftc(ifp);

 return (IFDI_GET_COUNTER(ctx, cnt));
}
