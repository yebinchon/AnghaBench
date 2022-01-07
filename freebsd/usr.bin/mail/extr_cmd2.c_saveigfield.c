
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ignore1 (char**,int ,char*) ;
 int saveignore ;

int
saveigfield(void *v)
{
 char **list = v;

 return (ignore1(list, saveignore, "ignored"));
}
