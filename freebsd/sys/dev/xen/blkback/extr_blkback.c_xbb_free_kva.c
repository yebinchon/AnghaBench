
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xbb_softc {int kva_free; int * kva; int lock; } ;


 int MA_OWNED ;
 intptr_t PAGE_SHIFT ;
 int bit_nclear (int ,intptr_t,intptr_t) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
xbb_free_kva(struct xbb_softc *xbb, uint8_t *kva_ptr, int nr_pages)
{
 intptr_t start_page;

 mtx_assert(&xbb->lock, MA_OWNED);

 start_page = (intptr_t)(kva_ptr - xbb->kva) >> PAGE_SHIFT;
 bit_nclear(xbb->kva_free, start_page, start_page + nr_pages - 1);

}
