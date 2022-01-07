
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diction ;
 int qsort (char**,int,int,int ) ;

void
sort(char **list)
{
 char **ap;

 for (ap = list; *ap != ((void*)0); ap++)
  ;
 if (ap-list < 2)
  return;
 qsort(list, ap-list, sizeof(*list), diction);
}
