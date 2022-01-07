
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_cop2_state {int dummy; } ;


 int M_NOWAIT ;
 int ctxzone ;
 struct octeon_cop2_state* uma_zalloc (int ,int ) ;

struct octeon_cop2_state *
octeon_cop2_alloc_ctx()
{
 return uma_zalloc(ctxzone, M_NOWAIT);
}
