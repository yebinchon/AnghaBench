
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ignore1 (char**,scalar_t__,char*) ;
 scalar_t__ saveignore ;

int
saveretfield(void *v)
{
 char **list = v;

 return (ignore1(list, saveignore + 1, "retained"));
}
