
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct g_raid3_softc {size_t sc_ndisks; struct g_raid3_disk* sc_disks; int sc_lock; } ;
struct g_raid3_disk {scalar_t__ d_state; TYPE_2__* d_consumer; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ G_RAID3_DISK_STATE_NODISK ;
 int SX_XLOCKED ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static struct g_raid3_disk *
g_raid3_find_disk(struct g_raid3_softc *sc, const char *name)
{
 struct g_raid3_disk *disk;
 u_int n;

 sx_assert(&sc->sc_lock, SX_XLOCKED);
 if (strncmp(name, "/dev/", 5) == 0)
  name += 5;
 for (n = 0; n < sc->sc_ndisks; n++) {
  disk = &sc->sc_disks[n];
  if (disk->d_state == G_RAID3_DISK_STATE_NODISK)
   continue;
  if (disk->d_consumer == ((void*)0))
   continue;
  if (disk->d_consumer->provider == ((void*)0))
   continue;
  if (strcmp(disk->d_consumer->provider->name, name) == 0)
   return (disk);
 }
 return (((void*)0));
}
