
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_ctx {int link_cleanup; int link_work; int link_width; int link_speed; int dev; } ;


 int callout_reset (int *,int ,int ,struct ntb_transport_ctx*) ;
 scalar_t__ ntb_link_is_up (int ,int *,int *) ;
 int ntb_printf (int,char*) ;
 int ntb_transport_link_work ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
ntb_transport_event_callback(void *data)
{
 struct ntb_transport_ctx *nt = data;

 if (ntb_link_is_up(nt->dev, &nt->link_speed, &nt->link_width)) {
  ntb_printf(1, "HW link up\n");
  callout_reset(&nt->link_work, 0, ntb_transport_link_work, nt);
 } else {
  ntb_printf(1, "HW link down\n");
  taskqueue_enqueue(taskqueue_swi, &nt->link_cleanup);
 }
}
