
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coltab {char co_char; int co_bit; } ;


 struct coltab* coltab ;
 int lastcolmod ;

int
evalcol(int col)
{
 struct coltab *colp;

 if (col == 0)
  return (lastcolmod);
 for (colp = &coltab[0]; colp->co_char != '\0'; colp++)
  if (colp->co_char == col)
   return (colp->co_bit);
 return (0);
}
