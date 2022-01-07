
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {char* name; scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int mediasize; int stripesize; int stripeoffset; int sectorsize; struct g_disk_softc* private; } ;
struct g_disk_softc {scalar_t__* led; int state; struct disk* dp; } ;
struct disk {int d_flags; int (* d_open ) (struct disk*) ;scalar_t__ d_maxsize; char* d_name; int d_unit; scalar_t__ d_delmaxsize; int (* d_close ) (struct disk*) ;int d_mediasize; int d_stripesize; int d_stripeoffset; int d_sectorsize; scalar_t__ d_destroyed; } ;


 scalar_t__ DFLTPHYS ;
 int DISKFLAG_CANDELETE ;
 int DISKFLAG_OPEN ;
 int DISKFLAG_WRITE_PROTECT ;
 int ENXIO ;
 int EROFS ;
 int G_STATE_ACTIVE ;
 int G_T_ACCESS ;
 scalar_t__ bootverbose ;
 int g_resize_provider (struct g_provider*,int ) ;
 int g_topology_assert () ;
 int g_trace (int ,char*,char*,int,int,int) ;
 int led_set (scalar_t__*,char*) ;
 int printf (char*,char*,int) ;
 int stub1 (struct disk*) ;
 int stub2 (struct disk*) ;

__attribute__((used)) static int
g_disk_access(struct g_provider *pp, int r, int w, int e)
{
 struct disk *dp;
 struct g_disk_softc *sc;
 int error;

 g_trace(G_T_ACCESS, "g_disk_access(%s, %d, %d, %d)",
     pp->name, r, w, e);
 g_topology_assert();
 sc = pp->private;
 if (sc == ((void*)0) || (dp = sc->dp) == ((void*)0) || dp->d_destroyed) {




  if (r <= 0 && w <= 0 && e <= 0)
   return (0);
  return (ENXIO);
 }
 r += pp->acr;
 w += pp->acw;
 e += pp->ace;
 error = 0;
 if ((pp->acr + pp->acw + pp->ace) == 0 && (r + w + e) > 0) {




  if (w > 0 && (dp->d_flags & DISKFLAG_WRITE_PROTECT) != 0)
   error = EROFS;
  if (error == 0 && dp->d_open != ((void*)0))
   error = dp->d_open(dp);
  if (bootverbose && error != 0)
   printf("Opened disk %s -> %d\n", pp->name, error);
  if (error != 0)
   return (error);
  pp->sectorsize = dp->d_sectorsize;
  if (dp->d_maxsize == 0) {
   printf("WARNING: Disk drive %s%d has no d_maxsize\n",
       dp->d_name, dp->d_unit);
   dp->d_maxsize = DFLTPHYS;
  }
  if (dp->d_delmaxsize == 0) {
   if (bootverbose && dp->d_flags & DISKFLAG_CANDELETE) {
    printf("WARNING: Disk drive %s%d has no "
        "d_delmaxsize\n", dp->d_name, dp->d_unit);
   }
   dp->d_delmaxsize = dp->d_maxsize;
  }
  pp->stripeoffset = dp->d_stripeoffset;
  pp->stripesize = dp->d_stripesize;
  dp->d_flags |= DISKFLAG_OPEN;




  if (pp->mediasize == 0)
   pp->mediasize = dp->d_mediasize;
  else
   g_resize_provider(pp, dp->d_mediasize);
 } else if ((pp->acr + pp->acw + pp->ace) > 0 && (r + w + e) == 0) {
  if (dp->d_close != ((void*)0)) {
   error = dp->d_close(dp);
   if (error != 0)
    printf("Closed disk %s -> %d\n",
        pp->name, error);
  }
  sc->state = G_STATE_ACTIVE;
  if (sc->led[0] != 0)
   led_set(sc->led, "0");
  dp->d_flags &= ~DISKFLAG_OPEN;
 }
 return (error);
}
