
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int dummy; } ;
struct bktr_softc {scalar_t__ alloc_pages; int bigbuf; } ;
typedef struct bktr_softc* bktr_ptr_t ;


 int ENXIO ;
 scalar_t__ FUNCTION (int ) ;
 scalar_t__ PAGE_SIZE ;
 int PROT_EXEC ;
 int UNIT (int ) ;
 int bktr_devclass ;
 int dev2unit (struct cdev*) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 scalar_t__ vtophys (int ) ;

__attribute__((used)) static int
bktr_mmap( struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr )
{
 int unit;
 bktr_ptr_t bktr;

 unit = UNIT(dev2unit(dev));

 if (FUNCTION(dev2unit(dev)) > 0)
  return( -1 );


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }

 if (nprot & PROT_EXEC)
  return( -1 );

 if (offset < 0)
  return( -1 );

 if (offset >= bktr->alloc_pages * PAGE_SIZE)
  return( -1 );

 *paddr = vtophys(bktr->bigbuf) + offset;
 return( 0 );
}
