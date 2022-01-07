
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_cmd {TYPE_1__* op; struct event_cmd* next; } ;
struct TYPE_2__ {int (* free ) (struct event_cmd*) ;} ;


 int free (struct event_cmd*) ;
 int stub1 (struct event_cmd*) ;

void
free_event_cmd_list(struct event_cmd *p)
{
 struct event_cmd * q;
 for ( ; p ; p = q) {
  q = p->next;
  if (p->op->free)
   p->op->free(p);
  free(p);
 }
}
