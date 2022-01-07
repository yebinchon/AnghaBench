
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_dev; } ;
struct otus_data {int * ni; int * buf; int * m; struct otus_softc* sc; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int M_ZERO ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int) ;
 int otus_free_list (struct otus_softc*,struct otus_data*,int) ;

__attribute__((used)) static int
otus_alloc_list(struct otus_softc *sc, struct otus_data data[],
    int ndata, int maxsz)
{
 int i, error;

 for (i = 0; i < ndata; i++) {
  struct otus_data *dp = &data[i];
  dp->sc = sc;
  dp->m = ((void*)0);
  dp->buf = malloc(maxsz, M_USBDEV, M_NOWAIT | M_ZERO);
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
 otus_free_list(sc, data, ndata);
 return (error);
}
