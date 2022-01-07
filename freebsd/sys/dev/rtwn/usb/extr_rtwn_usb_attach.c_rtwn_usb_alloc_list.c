
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_dev; } ;
struct rtwn_data {int * ni; int * buf; int * m; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int ) ;
 int rtwn_usb_free_list (struct rtwn_softc*,struct rtwn_data*,int) ;

__attribute__((used)) static int
rtwn_usb_alloc_list(struct rtwn_softc *sc, struct rtwn_data data[],
    int ndata, int maxsz)
{
 int i, error;

 for (i = 0; i < ndata; i++) {
  struct rtwn_data *dp = &data[i];
  dp->m = ((void*)0);
  dp->buf = malloc(maxsz, M_USBDEV, M_NOWAIT);
  if (dp->buf == ((void*)0)) {
   device_printf(sc->sc_dev,
       "could not allocate buffer\n");
   error = ENOMEM;
   goto fail;
  }
  dp->ni = ((void*)0);
 }

 return (0);
fail:
 rtwn_usb_free_list(sc, data, ndata);
 return (error);
}
