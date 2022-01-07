
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* va_name; int va_unit; } ;


 TYPE_1__** adapter ;
 int adapters ;
 scalar_t__ strcmp (char*,char*) ;

int
vid_find_adapter(char *driver, int unit)
{
 int i;

 for (i = 0; i < adapters; ++i) {
  if (adapter[i] == ((void*)0))
   continue;
  if (strcmp("*", driver) && strcmp(adapter[i]->va_name, driver))
   continue;
  if ((unit != -1) && (adapter[i]->va_unit != unit))
   continue;
  return i;
 }
 return -1;
}
