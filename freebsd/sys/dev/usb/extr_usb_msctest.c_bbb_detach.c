
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbb_transfer {int cv; int mtx; int xfer; } ;


 int M_USB ;
 int ST_MAX ;
 int cv_destroy (int *) ;
 int free (struct bbb_transfer*,int ) ;
 int mtx_destroy (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static void
bbb_detach(struct bbb_transfer *sc)
{
 usbd_transfer_unsetup(sc->xfer, ST_MAX);
 mtx_destroy(&sc->mtx);
 cv_destroy(&sc->cv);
 free(sc, M_USB);
}
