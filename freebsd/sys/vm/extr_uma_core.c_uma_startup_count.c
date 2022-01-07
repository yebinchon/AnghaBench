
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uma_zone_domain {int dummy; } ;
struct uma_zone {int dummy; } ;
struct uma_keg {int dummy; } ;
struct uma_domain {int dummy; } ;
struct uma_cache {int dummy; } ;
struct slabhead {int dummy; } ;


 int CACHE_LINE_SIZE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SIZEOF_UMA_SLAB ;
 int UMA_BOOT_ALIGN ;
 int UMA_BOOT_ZONES ;
 int UMA_HASH_SIZE_INIT ;
 int UMA_SLAB_SPACE ;
 int howmany (int,int) ;
 int ksize ;
 int mp_maxid ;
 int roundup (int,int ) ;
 int roundup2 (int,int ) ;
 int vm_ndomains ;
 int zsize ;

int
uma_startup_count(int vm_zones)
{
 int zones, pages;

 ksize = sizeof(struct uma_keg) +
     (sizeof(struct uma_domain) * vm_ndomains);
 zsize = sizeof(struct uma_zone) +
     (sizeof(struct uma_cache) * (mp_maxid + 1)) +
     (sizeof(struct uma_zone_domain) * vm_ndomains);





 pages = howmany(roundup(zsize, CACHE_LINE_SIZE) * 2 +
     roundup(ksize, CACHE_LINE_SIZE), PAGE_SIZE);




 zones = UMA_BOOT_ZONES + vm_zones;
 vm_zones = 0;



 if (zsize > UMA_SLAB_SPACE) {

  u_int ppera;

  ppera = howmany(roundup2(zsize, UMA_BOOT_ALIGN), PAGE_SIZE);
  if (PAGE_SIZE * ppera - roundup2(zsize, UMA_BOOT_ALIGN) <
      SIZEOF_UMA_SLAB)
   ppera++;
  pages += (zones + vm_zones) * ppera;
 } else if (roundup2(zsize, UMA_BOOT_ALIGN) > UMA_SLAB_SPACE)

  pages += zones;
 else
  pages += howmany(zones,
      UMA_SLAB_SPACE / roundup2(zsize, UMA_BOOT_ALIGN));


 pages += howmany(zones + 1,
     UMA_SLAB_SPACE / roundup2(ksize, UMA_BOOT_ALIGN));
 pages += howmany(zones, UMA_SLAB_SPACE /
     (sizeof(struct slabhead *) * UMA_HASH_SIZE_INIT));

 return (pages);
}
