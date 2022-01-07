
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtablist {struct mtablist* mtab_next; } ;


 int free (struct mtablist*) ;
 struct mtablist* mtabhead ;

void
free_mtab(void)
{
 struct mtablist *mtabp;

 while ((mtabp = mtabhead) != ((void*)0)) {
  mtabhead = mtabhead->mtab_next;
  free(mtabp);
 }
}
