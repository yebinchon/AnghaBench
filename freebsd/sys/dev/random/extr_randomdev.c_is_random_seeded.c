
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ra_seeded ) () ;} ;


 TYPE_1__* p_random_alg_context ;
 int stub1 () ;

bool
IS_RANDOM_SEEDED(void)
{
 return (p_random_alg_context->ra_seeded());
}
