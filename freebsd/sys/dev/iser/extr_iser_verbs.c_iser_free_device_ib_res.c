
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_device {int comps_used; int * pd; int * mr; struct iser_comp* comps; int event_handler; } ;
struct iser_comp {int * cq; int tq; } ;


 int M_ISER_VERBS ;
 int free (struct iser_comp*,int ) ;
 int ib_dealloc_pd (int *) ;
 int ib_destroy_cq (int *) ;
 int ib_unregister_event_handler (int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
iser_free_device_ib_res(struct iser_device *device)
{
 int i;

 for (i = 0; i < device->comps_used; i++) {
  struct iser_comp *comp = &device->comps[i];

  taskqueue_free(comp->tq);
  ib_destroy_cq(comp->cq);
  comp->cq = ((void*)0);
 }

 (void)ib_unregister_event_handler(&device->event_handler);
 (void)ib_dealloc_pd(device->pd);

 free(device->comps, M_ISER_VERBS);
 device->comps = ((void*)0);

 device->mr = ((void*)0);
 device->pd = ((void*)0);
}
