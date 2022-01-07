
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* grouping; } ;


 int asprintf (char**,char*,...) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 TYPE_1__ numeric ;
 int stderr ;

void
add_numeric_group(int n)
{
 char *s;

 if (numeric.grouping == ((void*)0)) {
  (void) asprintf(&s, "%d", n);
 } else {
  (void) asprintf(&s, "%s;%d", numeric.grouping, n);
 }
 if (s == ((void*)0))
  fprintf(stderr, "out of memory");

 free((char *)numeric.grouping);
 numeric.grouping = s;
}
