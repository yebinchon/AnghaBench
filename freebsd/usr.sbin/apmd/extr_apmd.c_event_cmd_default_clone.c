
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_cmd {int op; int name; int len; int * next; } ;


 struct event_cmd* malloc (int ) ;

struct event_cmd *
event_cmd_default_clone(void *this)
{
 struct event_cmd * oldone = this;
 struct event_cmd * newone = malloc(oldone->len);

 newone->next = ((void*)0);
 newone->len = oldone->len;
 newone->name = oldone->name;
 newone->op = oldone->op;
 return newone;
}
