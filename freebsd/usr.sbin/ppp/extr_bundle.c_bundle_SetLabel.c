
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* label; } ;
struct bundle {TYPE_1__ cfg; } ;


 int strncpy (char*,char const*,int) ;

void
bundle_SetLabel(struct bundle *bundle, const char *label)
{
  if (label)
    strncpy(bundle->cfg.label, label, sizeof bundle->cfg.label - 1);
  else
    *bundle->cfg.label = '\0';
}
