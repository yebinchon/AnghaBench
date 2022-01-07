
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; int (* c_label ) () ;} ;


 int CF_LOADAV ;
 int CF_ZFSARC ;
 TYPE_1__* curcmd ;
 int hostname ;
 int mvaddstr (int,int,char*) ;
 int mvprintw (int,int,char*,int ) ;
 int refresh () ;
 int stub1 () ;

void
labels(void)
{
 if (curcmd->c_flags & CF_LOADAV) {
  mvaddstr(0, 20,
      "/0   /1   /2   /3   /4   /5   /6   /7   /8   /9   /10");
  mvaddstr(1, 5, "Load Average");
 }
 if (curcmd->c_flags & CF_ZFSARC) {
  mvaddstr(0, 20,
      "   Total     MFU     MRU    Anon     Hdr   L2Hdr   Other");
  mvaddstr(1, 5, "ZFS ARC     ");
 }
 (*curcmd->c_label)();



 refresh();
}
