
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_dev; } ;
struct rsu_data {int * ni; int * buf; int * m; struct rsu_softc* sc; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int ) ;
 int rsu_free_list (struct rsu_softc*,struct rsu_data*,int) ;

__attribute__((used)) static int
rsu_alloc_list(struct rsu_softc *sc, struct rsu_data data[],
    int ndata, int maxsz)
{
 int i, error;

 for (i = 0; i < ndata; i++) {
  struct rsu_data *dp = &data[i];
  dp->sc = sc;
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
 rsu_free_list(sc, data, ndata);
 return (error);
}
