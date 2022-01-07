
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_sd {int state; int flags; int vinumconf; struct gv_plex* plex_sc; struct gv_drive* drive_sc; } ;
struct gv_plex {int flags; int org; int synced; TYPE_1__* vol_sc; } ;
struct gv_drive {int state; } ;
struct TYPE_2__ {int plexcount; } ;


 int GV_DRIVE_UP ;
 int GV_ERR_INVSTATE ;
 int GV_ERR_ISATTACHED ;
 int GV_ERR_SETSTATE ;
 int GV_PLEX_RAID5 ;
 int GV_PLEX_SYNCING ;
 int GV_SD_CANGOUP ;





 int GV_SETSTATE_CONFIG ;
 int GV_SETSTATE_FORCE ;
 int KASSERT (int ,char*) ;
 int gv_save_config (int ) ;
 int gv_update_plex_state (struct gv_plex*) ;

int
gv_set_sd_state(struct gv_sd *s, int newstate, int flags)
{
 struct gv_drive *d;
 struct gv_plex *p;
 int oldstate, status;

 KASSERT(s != ((void*)0), ("gv_set_sd_state: NULL s"));

 oldstate = s->state;


 status = 0;

 if (newstate == oldstate)
  return (0);

 switch (newstate) {
 case 132:




  if ((s->plex_sc != ((void*)0)) && !(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_ISATTACHED);
  break;

 case 130:
 case 131:




  if (!(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_SETSTATE);
  break;

 case 128:

  d = s->drive_sc;
  if ((d == ((void*)0)) || (d->state != GV_DRIVE_UP))
   return (GV_ERR_SETSTATE);


  switch (s->state) {
  case 130:
  case 131:




   break;

  case 132:




   p = s->plex_sc;
   if (p == ((void*)0))
    break;







   if (p->org != GV_PLEX_RAID5)
    break;
   else if (s->flags & GV_SD_CANGOUP) {
    s->flags &= ~GV_SD_CANGOUP;
    break;
   } else if (flags & GV_SETSTATE_FORCE)
    break;
   else
    s->state = 129;

   status = GV_ERR_SETSTATE;
   break;

  case 129:







   p = s->plex_sc;
   if (p == ((void*)0) || flags & GV_SETSTATE_FORCE)
    break;

   if ((p->org != GV_PLEX_RAID5 &&
       p->vol_sc->plexcount == 1) ||
       (p->flags & GV_PLEX_SYNCING &&
       p->synced > 0 &&
       p->org == GV_PLEX_RAID5))
    break;
   else
    return (GV_ERR_SETSTATE);

  default:
   return (GV_ERR_INVSTATE);
  }
  break;


 default:
  if (!(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_SETSTATE);
 }


 if (status == 0)
  s->state = newstate;


 if (s->plex_sc != ((void*)0))
  gv_update_plex_state(s->plex_sc);


 if (flags & GV_SETSTATE_CONFIG)
  gv_save_config(s->vinumconf);

 return (status);
}
