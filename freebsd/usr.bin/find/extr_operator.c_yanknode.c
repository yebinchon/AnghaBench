
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ PLAN ;



__attribute__((used)) static PLAN *
yanknode(PLAN **planp)
{
 PLAN *node;

 if ((node = (*planp)) == ((void*)0))
  return (((void*)0));
 (*planp) = (*planp)->next;
 node->next = ((void*)0);
 return (node);
}
