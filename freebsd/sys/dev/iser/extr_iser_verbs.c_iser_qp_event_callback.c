
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int ISER_ERR (char*,int ) ;

__attribute__((used)) static void
iser_qp_event_callback(struct ib_event *cause, void *context)
{
 ISER_ERR("got qp event %d", cause->event);
}
