
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {char* name; int line; } ;


 int MAXRECORD ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
dump_stack(struct position *t, int lev)
{
 int i;

 for (i = 0; i < lev; i++) {
  if (i == MAXRECORD) {
   fprintf(stderr, "   ...\n");
   break;
  }
  fprintf(stderr, "   %s at line %lu\n",
   t[i].name, t[i].line);
 }
}
