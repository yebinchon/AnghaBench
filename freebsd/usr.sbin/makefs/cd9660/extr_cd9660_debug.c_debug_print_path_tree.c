
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int level; struct TYPE_5__* ptnext; TYPE_1__* isoDirRecord; int * parent; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_4__ {char* name; } ;


 int printf (char*,...) ;

void
debug_print_path_tree(cd9660node *n)
{
 cd9660node *iterator = n;


 if (n->parent == ((void*)0))
  printf("debug_print_path_table: Dumping path table contents\n");

 while (iterator != ((void*)0)) {
  if (iterator->isoDirRecord->name[0] == '\0')
   printf("0) (ROOT)\n");
  else
   printf("%i) %s\n", iterator->level,
       iterator->isoDirRecord->name);

  iterator = iterator->ptnext;
 }
}
