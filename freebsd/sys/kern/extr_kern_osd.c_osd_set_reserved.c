
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct rm_priotracker {int dummy; } ;
struct osd {size_t osd_nslots; void** osd_slots; } ;
struct TYPE_2__ {int osd_object_lock; int osd_list_lock; int osd_list; int ** osd_destructors; } ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,struct osd*,int ) ;
 int M_NOWAIT ;
 int M_OSD ;
 int M_ZERO ;
 int OSD_DEBUG (char*,size_t,...) ;
 size_t OSD_FIRST ;
 size_t OSD_LAST ;
 int free (void**,int ) ;
 int memcpy (void**,void**,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int osd_free_reserved (void**) ;
 int osd_next ;
 TYPE_1__* osdm ;
 void** realloc (void**,int,int ,int) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

int
osd_set_reserved(u_int type, struct osd *osd, u_int slot, void **rsv,
    void *value)
{
 struct rm_priotracker tracker;

 KASSERT(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));
 KASSERT(slot > 0, ("Invalid slot."));
 KASSERT(osdm[type].osd_destructors[slot - 1] != ((void*)0), ("Unused slot."));

 rm_rlock(&osdm[type].osd_object_lock, &tracker);
 if (slot > osd->osd_nslots) {
  void **newptr;

  if (value == ((void*)0)) {
   OSD_DEBUG(
       "Not allocating null slot (type=%u, slot=%u).",
       type, slot);
   rm_runlock(&osdm[type].osd_object_lock, &tracker);
   if (rsv)
    osd_free_reserved(rsv);
   return (0);
  }





  if (rsv) {




   newptr = rsv;
   if (osd->osd_nslots != 0) {
    memcpy(newptr, osd->osd_slots,
        sizeof(void *) * osd->osd_nslots);
    free(osd->osd_slots, M_OSD);
   }
  } else {
   newptr = realloc(osd->osd_slots, sizeof(void *) * slot,
       M_OSD, M_NOWAIT | M_ZERO);
   if (newptr == ((void*)0)) {
    rm_runlock(&osdm[type].osd_object_lock,
        &tracker);
    return (ENOMEM);
   }
  }
  if (osd->osd_nslots == 0) {




   mtx_lock(&osdm[type].osd_list_lock);
   LIST_INSERT_HEAD(&osdm[type].osd_list, osd, osd_next);
   mtx_unlock(&osdm[type].osd_list_lock);
   OSD_DEBUG("Setting first slot (type=%u).", type);
  } else
   OSD_DEBUG("Growing slots array (type=%u).", type);
  osd->osd_slots = newptr;
  osd->osd_nslots = slot;
 } else if (rsv)
  osd_free_reserved(rsv);
 OSD_DEBUG("Setting slot value (type=%u, slot=%u, value=%p).", type,
     slot, value);
 osd->osd_slots[slot - 1] = value;
 rm_runlock(&osdm[type].osd_object_lock, &tracker);
 return (0);
}
