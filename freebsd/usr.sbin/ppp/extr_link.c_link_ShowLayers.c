
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int nlayers; TYPE_1__** layer; } ;
struct cmdargs {int prompt; } ;
struct TYPE_2__ {int name; } ;


 struct link* command_ChooseLink (struct cmdargs const*) ;
 int prompt_Printf (int ,char*,...) ;

int
link_ShowLayers(struct cmdargs const *arg)
{
  struct link *l = command_ChooseLink(arg);
  int layer;

  for (layer = l->nlayers; layer; layer--)
    prompt_Printf(arg->prompt, "%s%s", layer == l->nlayers ? "" : ", ",
                  l->layer[layer - 1]->name);
  if (l->nlayers)
    prompt_Printf(arg->prompt, "\n");

  return 0;
}
