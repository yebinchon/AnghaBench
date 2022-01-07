
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; struct TYPE_3__* next; } ;
typedef TYPE_1__ strlst_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ strlen (char*) ;

void
output_strlst(FILE *outf, strlst_t *lst)
{
 for (; lst != ((void*)0); lst = lst->next)
  if ( strlen(lst->str) )
   fprintf(outf, " %s", lst->str);
 fprintf(outf, "\n");
}
