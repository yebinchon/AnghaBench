
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ra_deinit_alg ) (void*) ;} ;


 TYPE_1__* p_random_alg_context ;
 int random_infra_uninit () ;
 int stub1 (void*) ;

__attribute__((used)) static void
random_alg_context_ra_deinit_alg(void *data)
{




 p_random_alg_context->ra_deinit_alg(data);
 p_random_alg_context = ((void*)0);
}
