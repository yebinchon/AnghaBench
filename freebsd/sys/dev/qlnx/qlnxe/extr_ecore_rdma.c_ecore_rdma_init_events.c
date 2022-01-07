
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_rdma_start_in_params {TYPE_2__* events; } ;
struct ecore_rdma_events {int context; int affiliated_event; int unaffiliated_event; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int context; int affiliated_event; int unaffiliated_event; } ;
struct TYPE_3__ {struct ecore_rdma_events events; } ;



__attribute__((used)) static void ecore_rdma_init_events(
 struct ecore_hwfn *p_hwfn,
 struct ecore_rdma_start_in_params *params)
{
 struct ecore_rdma_events *events;

 events = &p_hwfn->p_rdma_info->events;

 events->unaffiliated_event = params->events->unaffiliated_event;
 events->affiliated_event = params->events->affiliated_event;
 events->context = params->events->context;
}
