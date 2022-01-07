
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef int * osd_method_t ;
typedef int * osd_destructor_t ;
struct TYPE_2__ {size_t osd_ntslots; int osd_nmethods; int osd_module_lock; int ** osd_methods; int ** osd_destructors; int osd_object_lock; } ;


 int KASSERT (int,char*) ;
 int M_OSD ;
 int M_WAITOK ;
 int OSD_DEBUG (char*,size_t,size_t) ;
 size_t OSD_FIRST ;
 size_t OSD_LAST ;
 int bcopy (int **,void*,int) ;
 int free (int **,int ) ;
 void* malloc (int,int ,int ) ;
 int * osd_default_destructor ;
 TYPE_1__* osdm ;
 int ** realloc (int **,int,int ,int ) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
osd_register(u_int type, osd_destructor_t destructor, osd_method_t *methods)
{
 void *newptr;
 u_int i, m;

 KASSERT(type >= OSD_FIRST && type <= OSD_LAST, ("Invalid type."));





 if (destructor == ((void*)0))
  destructor = osd_default_destructor;

 sx_xlock(&osdm[type].osd_module_lock);



 for (i = 0; i < osdm[type].osd_ntslots; i++) {
  if (osdm[type].osd_destructors[i] == ((void*)0)) {
   OSD_DEBUG("Unused slot found (type=%u, slot=%u).",
       type, i);
   break;
  }
 }



 if (i == osdm[type].osd_ntslots) {
  osdm[type].osd_ntslots++;
  if (osdm[type].osd_nmethods != 0)
   osdm[type].osd_methods = realloc(osdm[type].osd_methods,
       sizeof(osd_method_t) * osdm[type].osd_ntslots *
       osdm[type].osd_nmethods, M_OSD, M_WAITOK);
  newptr = malloc(sizeof(osd_destructor_t) *
      osdm[type].osd_ntslots, M_OSD, M_WAITOK);
  rm_wlock(&osdm[type].osd_object_lock);
  bcopy(osdm[type].osd_destructors, newptr,
      sizeof(osd_destructor_t) * i);
  free(osdm[type].osd_destructors, M_OSD);
  osdm[type].osd_destructors = newptr;
  rm_wunlock(&osdm[type].osd_object_lock);
  OSD_DEBUG("New slot allocated (type=%u, slot=%u).",
      type, i + 1);
 }

 osdm[type].osd_destructors[i] = destructor;
 if (osdm[type].osd_nmethods != 0) {
  for (m = 0; m < osdm[type].osd_nmethods; m++)
   osdm[type].osd_methods[i * osdm[type].osd_nmethods + m]
       = methods != ((void*)0) ? methods[m] : ((void*)0);
 }
 sx_xunlock(&osdm[type].osd_module_lock);
 return (i + 1);
}
