
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ nlayers; } ;



void
link_EmptyStack(struct link *l)
{
  l->nlayers = 0;
}
