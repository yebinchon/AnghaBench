
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pm; int ** weekday; int ** wday; int ** month; int ** mon; } ;
 int fprintf (int ,char*,...) ;
 int last_kw ;
 int stderr ;
 TYPE_1__ tm ;

void
check_time_list(void)
{
 switch (last_kw) {
 case 133:
  if (tm.mon[11] != ((void*)0))
   return;
  break;
 case 128:
  if (tm.month[11] != ((void*)0))
   return;
  break;
 case 134:
  if (tm.wday[6] != ((void*)0))
   return;
  break;
 case 130:
  if (tm.weekday[6] != ((void*)0))
   return;
  break;
 case 131:
  if (tm.pm != ((void*)0))
   return;
  break;
 case 129:
 case 132:
  return;
 default:
  fprintf(stderr,"unknown list");
  break;
 }

 fprintf(stderr,"too few items in list (%d)", last_kw);
}
