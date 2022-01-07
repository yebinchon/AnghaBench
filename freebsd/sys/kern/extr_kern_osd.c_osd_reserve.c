
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int KASSERT (int,char*) ;
 int M_OSD ;
 int M_WAITOK ;
 int M_ZERO ;
 int OSD_DEBUG (char*,int) ;
 void** malloc (int,int ,int) ;

void **
osd_reserve(u_int slot)
{

 KASSERT(slot > 0, ("Invalid slot."));

 OSD_DEBUG("Reserving slot array (slot=%u).", slot);
 return (malloc(sizeof(void *) * slot, M_OSD, M_WAITOK | M_ZERO));
}
