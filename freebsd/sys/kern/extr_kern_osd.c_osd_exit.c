
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct rm_priotracker {int dummy; } ;
struct osd {size_t osd_nslots; int * osd_slots; } ;
struct TYPE_2__ {int osd_object_lock; int ** osd_destructors; } ;


 int KASSERT (int,char*) ;
 int OSD_DEBUG (char*,size_t,...) ;
 size_t OSD_FIRST ;
 size_t OSD_LAST ;
 int do_osd_del (size_t,struct osd*,size_t,int ) ;
 TYPE_1__* osdm ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

void
osd_exit(u_int type, struct osd *osd)
{
 struct rm_priotracker tracker;
 u_int i;

 KASSERT(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));

 if (osd->osd_nslots == 0) {
  KASSERT(osd->osd_slots == ((void*)0), ("Non-null osd_slots."));

  return;
 }

 rm_rlock(&osdm[type].osd_object_lock, &tracker);
 for (i = 1; i <= osd->osd_nslots; i++) {
  if (osdm[type].osd_destructors[i - 1] != ((void*)0))
   do_osd_del(type, osd, i, 0);
  else
   OSD_DEBUG("Unused slot (type=%u, slot=%u).", type, i);
 }
 rm_runlock(&osdm[type].osd_object_lock, &tracker);
 OSD_DEBUG("Object exit (type=%u).", type);
}
