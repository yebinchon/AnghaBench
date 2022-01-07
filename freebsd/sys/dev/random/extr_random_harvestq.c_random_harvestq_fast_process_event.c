
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct harvest_event {int dummy; } ;
struct TYPE_2__ {int (* ra_event_processor ) (struct harvest_event*) ;} ;


 int RANDOM_CONFIG_S_LOCK () ;
 int RANDOM_CONFIG_S_UNLOCK () ;
 int explicit_bzero (struct harvest_event*,int) ;
 TYPE_1__* p_random_alg_context ;
 int stub1 (struct harvest_event*) ;

__attribute__((used)) static __inline void
random_harvestq_fast_process_event(struct harvest_event *event)
{




 p_random_alg_context->ra_event_processor(event);



 explicit_bzero(event, sizeof(*event));
}
