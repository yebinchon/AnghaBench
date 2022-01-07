
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* label; } ;
struct bundle {TYPE_1__ cfg; } ;



const char *
bundle_GetLabel(struct bundle *bundle)
{
  return *bundle->cfg.label ? bundle->cfg.label : ((void*)0);
}
