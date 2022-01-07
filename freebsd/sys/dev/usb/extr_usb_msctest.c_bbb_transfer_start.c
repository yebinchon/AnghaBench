
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct bbb_transfer {size_t state; int * xfer; } ;


 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
bbb_transfer_start(struct bbb_transfer *sc, uint8_t xfer_index)
{
 sc->state = xfer_index;
 usbd_transfer_start(sc->xfer[xfer_index]);
}
