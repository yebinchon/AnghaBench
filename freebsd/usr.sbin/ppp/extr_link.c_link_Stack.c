
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int nlayers; struct layer** layer; int name; } ;
struct layer {int name; } ;


 int LogERROR ;
 int log_Printf (int ,char*,int ,int ) ;

int
link_Stack(struct link *l, struct layer *layer)
{
  if (l->nlayers == sizeof l->layer / sizeof l->layer[0]) {
    log_Printf(LogERROR, "%s: Oops, cannot stack a %s layer...\n",
               l->name, layer->name);
    return 0;
  }
  l->layer[l->nlayers++] = layer;
  return 1;
}
