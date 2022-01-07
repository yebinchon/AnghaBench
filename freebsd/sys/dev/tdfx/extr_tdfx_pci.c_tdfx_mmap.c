
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct tdfx_softc {int addr0; int memrange; } ;
struct cdev {int dummy; } ;


 scalar_t__ devclass_get_softc (int ,int) ;
 int printf (char*) ;
 scalar_t__ rman_get_start (int ) ;
 int tdfx_count ;
 int tdfx_devclass ;

__attribute__((used)) static int
tdfx_mmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{
 struct tdfx_softc* tdfx_info[2];

 tdfx_info[0] = (struct tdfx_softc*)devclass_get_softc(tdfx_devclass, 0);


 if(tdfx_info[0] == ((void*)0)) {



    return -1;
 }


 if((offset & 0xff000000) == tdfx_info[0]->addr0) {
  offset &= 0xffffff;
  *paddr = rman_get_start(tdfx_info[0]->memrange) + offset;
  return 0;
 }

 if(tdfx_count > 1) {
  tdfx_info[1] = (struct tdfx_softc*)devclass_get_softc(tdfx_devclass, 1);
  if((offset & 0xff000000) == tdfx_info[1]->addr0) {
   offset &= 0xffffff;
   *paddr = rman_get_start(tdfx_info[1]->memrange) +
       offset;
   return 0;
  }
 }
 return -1;
}
