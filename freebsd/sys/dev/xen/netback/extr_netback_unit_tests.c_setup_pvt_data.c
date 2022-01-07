
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rxs; int rxf; int rxb; int * ifp; int * txs; int txf; int txb; int gnttab; } ;


 int BACK_RING_INIT (int *,int *,int ) ;
 int FRONT_RING_INIT (int *,int *,int ) ;
 int IFT_ETHER ;
 int M_WAITOK ;
 int M_XENNETBACK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int SHARED_RING_INIT (int *) ;
 int bzero (int ,int) ;
 int * if_alloc (int ) ;
 void* malloc (int ,int ,int) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static int
setup_pvt_data(void)
{
 int error = 0;

 bzero(xnb_unit_pvt.gnttab, sizeof(xnb_unit_pvt.gnttab));

 xnb_unit_pvt.txs = malloc(PAGE_SIZE, M_XENNETBACK, M_WAITOK|M_ZERO);
 if (xnb_unit_pvt.txs != ((void*)0)) {
  SHARED_RING_INIT(xnb_unit_pvt.txs);
  BACK_RING_INIT(&xnb_unit_pvt.txb, xnb_unit_pvt.txs, PAGE_SIZE);
  FRONT_RING_INIT(&xnb_unit_pvt.txf, xnb_unit_pvt.txs, PAGE_SIZE);
 } else {
  error = 1;
 }

 xnb_unit_pvt.ifp = if_alloc(IFT_ETHER);
 if (xnb_unit_pvt.ifp == ((void*)0)) {
  error = 1;
 }

 xnb_unit_pvt.rxs = malloc(PAGE_SIZE, M_XENNETBACK, M_WAITOK|M_ZERO);
 if (xnb_unit_pvt.rxs != ((void*)0)) {
  SHARED_RING_INIT(xnb_unit_pvt.rxs);
  BACK_RING_INIT(&xnb_unit_pvt.rxb, xnb_unit_pvt.rxs, PAGE_SIZE);
  FRONT_RING_INIT(&xnb_unit_pvt.rxf, xnb_unit_pvt.rxs, PAGE_SIZE);
 } else {
  error = 1;
 }

 return error;
}
