
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
oneof(char *target, char *list[], int cnt)
{
 int i;

 for (i = 0; i < cnt; i++)
  if (strcmp(target, list[i]) == 0)
   return (i);
 return (-1);
}
