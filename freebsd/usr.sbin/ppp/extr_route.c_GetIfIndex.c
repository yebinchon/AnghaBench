
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Index2Nam (int) ;
 int route_nifs ;
 scalar_t__ strcmp (int ,char*) ;

int
GetIfIndex(char *name)
{
  int idx;

  idx = 1;
  while (route_nifs == -1 || idx < route_nifs)
    if (strcmp(Index2Nam(idx), name) == 0)
      return idx;
    else
      idx++;
  return -1;
}
