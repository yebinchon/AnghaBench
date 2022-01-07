
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct rm_priotracker {int dummy; } ;
struct osd {int dummy; } ;
struct TYPE_2__ {int osd_object_lock; } ;


 int do_osd_del (size_t,struct osd*,size_t,int ) ;
 TYPE_1__* osdm ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

void
osd_del(u_int type, struct osd *osd, u_int slot)
{
 struct rm_priotracker tracker;

 rm_rlock(&osdm[type].osd_object_lock, &tracker);
 do_osd_del(type, osd, slot, 0);
 rm_runlock(&osdm[type].osd_object_lock, &tracker);
}
