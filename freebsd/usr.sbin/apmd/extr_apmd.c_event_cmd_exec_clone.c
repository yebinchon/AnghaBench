
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op; int name; int len; int * next; } ;
struct event_cmd_exec {int * line; TYPE_1__ evcmd; } ;
struct event_cmd {int dummy; } ;


 int err (int,char*) ;
 scalar_t__ event_cmd_default_clone (void*) ;
 int * strdup (int *) ;

struct event_cmd *
event_cmd_exec_clone(void *this)
{
 struct event_cmd_exec * newone = (struct event_cmd_exec *) event_cmd_default_clone(this);
 struct event_cmd_exec * oldone = this;

 newone->evcmd.next = ((void*)0);
 newone->evcmd.len = oldone->evcmd.len;
 newone->evcmd.name = oldone->evcmd.name;
 newone->evcmd.op = oldone->evcmd.op;
 if ((newone->line = strdup(oldone->line)) == ((void*)0))
  err(1, "out of memory");
 return (struct event_cmd *) newone;
}
