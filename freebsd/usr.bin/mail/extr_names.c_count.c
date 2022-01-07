
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; struct name* n_flink; } ;


 int GDEL ;

int
count(struct name *np)
{
 int c;

 for (c = 0; np != ((void*)0); np = np->n_flink)
  if ((np->n_type & GDEL) == 0)
   c++;
 return (c);
}
