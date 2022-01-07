
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignoretab {struct ignore** i_head; } ;
struct ignore {char* i_field; struct ignore* i_link; } ;


 scalar_t__ equal (char*,char*) ;
 size_t hash (char*) ;

int
member(char *realfield, struct ignoretab *table)
{
 struct ignore *igp;

 for (igp = table->i_head[hash(realfield)]; igp != ((void*)0); igp = igp->i_link)
  if (*igp->i_field == *realfield &&
      equal(igp->i_field, realfield))
   return (1);
 return (0);
}
