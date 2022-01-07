
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int d_mediasize; int d_sectorsize; int d_fwsectors; int d_fwheads; } ;
typedef int off_t ;



void
sparc64_ata_disk_firmware_geom_adjust(struct disk *disk)
{
 if (disk->d_mediasize > (off_t)65535 * 16 * 63 * disk->d_sectorsize)
  disk->d_fwsectors = 255;
 if (disk->d_mediasize > (off_t)65535 * 16 * 255 * disk->d_sectorsize)
  disk->d_fwheads = 255;
}
