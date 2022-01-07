
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int cmd; } ;
typedef TYPE_1__ midi_cmdtab ;



char *
midi_cmdname(int cmd, midi_cmdtab *tab)
{
 while (tab->name != ((void*)0)) {
  if (cmd == tab->cmd)
   return (tab->name);
  tab++;
 }

 return ("unknown");
}
