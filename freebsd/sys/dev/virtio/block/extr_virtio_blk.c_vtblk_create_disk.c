
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vtblk_softc {int vtblk_dev; struct disk* vtblk_disk; } ;
struct disk {int d_sectorsize; scalar_t__ d_mediasize; } ;


 int DISK_VERSION ;
 int device_printf (int ,char*,int,int,int) ;
 int disk_create (struct disk*,int ) ;
 int vtblk_ident (struct vtblk_softc*) ;

__attribute__((used)) static void
vtblk_create_disk(struct vtblk_softc *sc)
{
 struct disk *dp;

 dp = sc->vtblk_disk;

 vtblk_ident(sc);

 device_printf(sc->vtblk_dev, "%juMB (%ju %u byte sectors)\n",
     (uintmax_t) dp->d_mediasize >> 20,
     (uintmax_t) dp->d_mediasize / dp->d_sectorsize,
     dp->d_sectorsize);

 disk_create(dp, DISK_VERSION);
}
