
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct rm_priotracker {int dummy; } ;
struct osd {size_t osd_nslots; void** osd_slots; } ;
struct TYPE_2__ {int osd_object_lock; int ** osd_destructors; } ;


 int KASSERT (int,char*) ;
 int OSD_DEBUG (char*,size_t,size_t,...) ;
 size_t OSD_FIRST ;
 size_t OSD_LAST ;
 TYPE_1__* osdm ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

void *
osd_get(u_int type, struct osd *osd, u_int slot)
{
 struct rm_priotracker tracker;
 void *value;

 KASSERT(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));
 KASSERT(slot > 0, ("Invalid slot."));
 KASSERT(osdm[type].osd_destructors[slot - 1] != ((void*)0), ("Unused slot."));

 rm_rlock(&osdm[type].osd_object_lock, &tracker);
 if (slot > osd->osd_nslots) {
  value = ((void*)0);
  OSD_DEBUG("Slot doesn't exist (type=%u, slot=%u).", type, slot);
 } else {
  value = osd->osd_slots[slot - 1];
  OSD_DEBUG("Returning slot value (type=%u, slot=%u, value=%p).",
      type, slot, value);
 }
 rm_runlock(&osdm[type].osd_object_lock, &tracker);
 return (value);
}
