
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int min_per; int max_per; int visited; } ;


 int dumpsize ;
 int nitems (TYPE_1__*) ;
 int printf (char*,int) ;
 int progress ;
 TYPE_1__* progress_track ;

__attribute__((used)) static void
report_progress(void)
{
 int sofar, i;

 sofar = 100 - ((progress * 100) / dumpsize);
 for (i = 0; i < nitems(progress_track); i++) {
  if (sofar < progress_track[i].min_per ||
      sofar > progress_track[i].max_per)
   continue;
  if (progress_track[i].visited)
   return;
  progress_track[i].visited = 1;
  printf("..%d%%", sofar);
  return;
 }
}
