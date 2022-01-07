
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct group_des {int nports; int last; int first_id; int pipename; int custom_port; TYPE_1__* ports; } ;
struct TYPE_4__ {int num_groups; int base_name; } ;
struct TYPE_3__ {struct group_des* group; } ;


 TYPE_2__ glob_arg ;
 struct group_des* groups ;
 TYPE_1__* ports ;
 int strcmp (int ,int ) ;
 int strcpy (int ,int ) ;

void init_groups(void)
{
 int i, j, t = 0;
 struct group_des *g = ((void*)0);
 for (i = 0; i < glob_arg.num_groups; i++) {
  g = &groups[i];
  g->ports = &ports[t];
  for (j = 0; j < g->nports; j++)
   g->ports[j].group = g;
  t += g->nports;
  if (!g->custom_port)
   strcpy(g->pipename, glob_arg.base_name);
  for (j = 0; j < i; j++) {
   struct group_des *h = &groups[j];
   if (!strcmp(h->pipename, g->pipename))
    g->first_id += h->nports;
  }
 }
 g->last = 1;
}
