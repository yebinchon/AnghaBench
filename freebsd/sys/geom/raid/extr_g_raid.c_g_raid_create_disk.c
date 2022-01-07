
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_softc {int sc_disks; } ;
struct g_raid_disk {int d_subdisks; int d_state; struct g_raid_softc* d_softc; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*) ;
 int G_RAID_DISK_S_NONE ;
 int M_RAID ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct g_raid_disk*,int ) ;
 int d_next ;
 struct g_raid_disk* malloc (int,int ,int) ;

struct g_raid_disk *
g_raid_create_disk(struct g_raid_softc *sc)
{
 struct g_raid_disk *disk;

 G_RAID_DEBUG1(1, sc, "Creating disk.");
 disk = malloc(sizeof(*disk), M_RAID, M_WAITOK | M_ZERO);
 disk->d_softc = sc;
 disk->d_state = G_RAID_DISK_S_NONE;
 TAILQ_INIT(&disk->d_subdisks);
 TAILQ_INSERT_TAIL(&sc->sc_disks, disk, d_next);
 return (disk);
}
