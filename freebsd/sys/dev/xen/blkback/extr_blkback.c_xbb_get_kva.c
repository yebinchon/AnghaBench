
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ va; } ;
struct xbb_softc {int reqlist_kva_pages; int kva; int lock; int kva_shortages; int flags; TYPE_1__ ring_config; int kva_free; } ;


 int KASSERT (int,char*) ;
 intptr_t PAGE_SIZE ;
 int XBBF_RESOURCE_SHORTAGE ;
 int bit_ffc (int ,int,int*) ;
 int bit_nset (int ,int,int) ;
 scalar_t__ bit_test (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static uint8_t *
xbb_get_kva(struct xbb_softc *xbb, int nr_pages)
{
 int first_clear;
 int num_clear;
 uint8_t *free_kva;
 int i;

 KASSERT(nr_pages != 0, ("xbb_get_kva of zero length"));

 first_clear = 0;
 free_kva = ((void*)0);

 mtx_lock(&xbb->lock);




 bit_ffc(xbb->kva_free, xbb->reqlist_kva_pages, &first_clear);

 if (first_clear == -1)
  goto bailout;





 for (i = first_clear, num_clear = 0; i < xbb->reqlist_kva_pages; i++) {






  if (bit_test(xbb->kva_free, i)) {
   num_clear = 0;
   first_clear = -1;
   continue;
  }

  if (first_clear == -1)
   first_clear = i;





  if (++num_clear == nr_pages) {

   bit_nset(xbb->kva_free, first_clear,
     first_clear + nr_pages - 1);

   free_kva = xbb->kva +
    (uint8_t *)((intptr_t)first_clear * PAGE_SIZE);

   KASSERT(free_kva >= (uint8_t *)xbb->kva &&
    free_kva + (nr_pages * PAGE_SIZE) <=
    (uint8_t *)xbb->ring_config.va,
    ("Free KVA %p len %d out of range, "
     "kva = %#jx, ring VA = %#jx\n", free_kva,
     nr_pages * PAGE_SIZE, (uintmax_t)xbb->kva,
     (uintmax_t)xbb->ring_config.va));
   break;
  }
 }

bailout:

 if (free_kva == ((void*)0)) {
  xbb->flags |= XBBF_RESOURCE_SHORTAGE;
  xbb->kva_shortages++;
 }

 mtx_unlock(&xbb->lock);

 return (free_kva);
}
