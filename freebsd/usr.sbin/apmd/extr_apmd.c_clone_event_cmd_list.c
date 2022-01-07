
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_cmd {struct event_cmd* next; TYPE_1__* op; } ;
struct TYPE_2__ {struct event_cmd* (* clone ) (struct event_cmd*) ;} ;


 int assert (struct event_cmd* (*) (struct event_cmd*)) ;
 int err (int,char*) ;
 struct event_cmd* stub1 (struct event_cmd*) ;

struct event_cmd *
clone_event_cmd_list(struct event_cmd *p)
{
 struct event_cmd dummy;
 struct event_cmd *q = &dummy;
 for ( ;p; p = p->next) {
  assert(p->op->clone);
  if ((q->next = p->op->clone(p)) == ((void*)0))
   err(1, "out of memory");
  q = q->next;
 }
 q->next = ((void*)0);
 return dummy.next;
}
