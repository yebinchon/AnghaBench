
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {int line; int name; } ;


 int CURRENT_LINE ;
 int CURRENT_NAME ;
 int MAXRECORD ;

__attribute__((used)) static void
record(struct position *t, int lev)
{
 if (lev < MAXRECORD) {
  t[lev].name = CURRENT_NAME;
  t[lev].line = CURRENT_LINE;
 }
}
