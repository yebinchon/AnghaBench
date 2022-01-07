
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vhd_geom {int heads; int sectors; scalar_t__ cylinders; } ;
typedef int int64_t ;


 int VHD_SECTOR_SIZE ;
 int vhd_geometry (int,struct vhd_geom*) ;

__attribute__((used)) static uint64_t
vhd_resize(uint64_t origsz)
{
 struct vhd_geom geom;
 uint64_t newsz;
 newsz = origsz;
 while (1) {
  vhd_geometry(newsz, &geom);
  newsz = (int64_t)geom.cylinders * geom.heads *
      geom.sectors * VHD_SECTOR_SIZE;
  if (newsz >= origsz)
   break;
  newsz += geom.heads * geom.sectors * VHD_SECTOR_SIZE;
 }
 return (newsz);
}
