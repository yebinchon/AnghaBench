
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* ra_init_alg ) (void*) ;} ;


 int IS_RANDOM_SEEDED ;
 int READ_RANDOM ;
 int READ_RANDOM_UIO ;
 TYPE_1__* p_random_alg_context ;
 TYPE_1__ random_alg_context ;
 int random_infra_init (int ,int ,int ) ;
 int stub1 (void*) ;

__attribute__((used)) static void
random_alg_context_ra_init_alg(void *data)
{

 p_random_alg_context = &random_alg_context;
 p_random_alg_context->ra_init_alg(data);



}
