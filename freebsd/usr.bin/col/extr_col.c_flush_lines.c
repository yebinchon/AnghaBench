
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * l_prev; scalar_t__ l_line; struct TYPE_5__* l_next; } ;
typedef TYPE_1__ LINE ;


 int flush_blanks () ;
 int flush_line (TYPE_1__*) ;
 int free (scalar_t__) ;
 int free_line (TYPE_1__*) ;
 TYPE_1__* lines ;
 int nblank_lines ;

__attribute__((used)) static void
flush_lines(int nflush)
{
 LINE *l;

 while (--nflush >= 0) {
  l = lines;
  lines = l->l_next;
  if (l->l_line) {
   flush_blanks();
   flush_line(l);
  }
  if (l->l_line || l->l_next)
   nblank_lines++;
  if (l->l_line)
   (void)free(l->l_line);
  free_line(l);
 }
 if (lines)
  lines->l_prev = ((void*)0);
}
