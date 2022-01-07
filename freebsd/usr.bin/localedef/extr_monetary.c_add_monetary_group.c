
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mon_grouping; } ;


 int asprintf (char**,char*,...) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 TYPE_1__ mon ;
 int stderr ;

void
add_monetary_group(int n)
{
 char *s = ((void*)0);

 if (mon.mon_grouping == ((void*)0)) {
  (void) asprintf(&s, "%d", n);
 } else {
  (void) asprintf(&s, "%s;%d", mon.mon_grouping, n);
 }
 if (s == ((void*)0))
  fprintf(stderr, "out of memory");

 free((char *)mon.mon_grouping);
 mon.mon_grouping = s;
}
