
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_cop2_state {int dummy; } ;


 int ctxzone ;
 int uma_zfree (int ,struct octeon_cop2_state*) ;

void
octeon_cop2_free_ctx(struct octeon_cop2_state *ctx)
{
 uma_zfree(ctxzone, ctx);
}
