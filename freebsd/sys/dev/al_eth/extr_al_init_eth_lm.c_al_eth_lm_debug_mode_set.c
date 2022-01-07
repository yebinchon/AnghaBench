
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_lm_context {int debug; } ;
typedef int boolean_t ;



void
al_eth_lm_debug_mode_set(struct al_eth_lm_context *lm_context,
    boolean_t enable)
{

 lm_context->debug = enable;
}
