
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_disks; } ;
struct g_mirror_disk {scalar_t__ d_state; } ;


 scalar_t__ G_MIRROR_DISK_STATE_ACTIVE ;
 struct g_mirror_disk* LIST_FIRST (int *) ;
 struct g_mirror_disk* LIST_NEXT (struct g_mirror_disk*,int ) ;
 int d_next ;

__attribute__((used)) static __inline struct g_mirror_disk *
g_mirror_find_next(struct g_mirror_softc *sc, struct g_mirror_disk *disk)
{
 struct g_mirror_disk *dp;

 for (dp = LIST_NEXT(disk, d_next); dp != disk;
     dp = LIST_NEXT(dp, d_next)) {
  if (dp == ((void*)0))
   dp = LIST_FIRST(&sc->sc_disks);
  if (dp->d_state == G_MIRROR_DISK_STATE_ACTIVE)
   break;
 }
 if (dp->d_state != G_MIRROR_DISK_STATE_ACTIVE)
  return (((void*)0));
 return (dp);
}
