
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pm; int * am; int ** weekday; int ** wday; int ** month; int ** mon; } ;







 int free (char*) ;
 int last_kw ;
 TYPE_1__ tm ;

void
reset_time_list(void)
{
 int i;
 switch (last_kw) {
 case 131:
  for (i = 0; i < 12; i++) {
   free((char *)tm.mon[i]);
   tm.mon[i] = ((void*)0);
  }
  break;
 case 128:
  for (i = 0; i < 12; i++) {
   free((char *)tm.month[i]);
   tm.month[i] = ((void*)0);
  }
  break;
 case 132:
  for (i = 0; i < 7; i++) {
   free((char *)tm.wday[i]);
   tm.wday[i] = ((void*)0);
  }
  break;
 case 129:
  for (i = 0; i < 7; i++) {
   free((char *)tm.weekday[i]);
   tm.weekday[i] = ((void*)0);
  }
  break;
 case 130:
  free((char *)tm.am);
  tm.am = ((void*)0);
  free((char *)tm.pm);
  tm.pm = ((void*)0);
  break;
 }
}
