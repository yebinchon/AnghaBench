
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int plexcount; int name; int plexes; } ;
struct gv_plex {int dummy; } ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct gv_plex* LIST_FIRST (int *) ;
 int gv_start_plex (struct gv_plex*) ;
 int gv_sync (struct gv_volume*) ;

int
gv_start_vol(struct gv_volume *v)
{
 struct gv_plex *p;
 int error;

 KASSERT(v != ((void*)0), ("gv_start_vol: NULL v"));

 error = 0;

 if (v->plexcount == 0)
  return (ENXIO);

 else if (v->plexcount == 1) {
  p = LIST_FIRST(&v->plexes);
  KASSERT(p != ((void*)0), ("gv_start_vol: NULL p on %s", v->name));
  error = gv_start_plex(p);
 } else
  error = gv_sync(v);

 return (error);
}
