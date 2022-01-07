
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct nm_selinfo {TYPE_1__ si; } ;


 int KNOTE_UNLOCKED (int *,int) ;

__attribute__((used)) static void
nm_kqueue_notify(void *opaque, int pending)
{
 struct nm_selinfo *si = opaque;




 KNOTE_UNLOCKED(&si->si.si_note, 0x100);
}
