
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {struct name* n_flink; } ;



struct name *
tailof(struct name *name)
{
 struct name *np;

 np = name;
 if (np == ((void*)0))
  return (((void*)0));
 while (np->n_flink != ((void*)0))
  np = np->n_flink;
 return (np);
}
