
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_tx_cmd {int * buf; int * odata; } ;
struct otus_softc {int sc_dev; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int M_ZERO ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int) ;
 int otus_free_cmd_list (struct otus_softc*,struct otus_tx_cmd*,int) ;

__attribute__((used)) static int
otus_alloc_cmd_list(struct otus_softc *sc, struct otus_tx_cmd cmd[],
    int ndata, int maxsz)
{
 int i, error;

 for (i = 0; i < ndata; i++) {
  struct otus_tx_cmd *dp = &cmd[i];
  dp->buf = malloc(maxsz, M_USBDEV, M_NOWAIT | M_ZERO);
  dp->odata = ((void*)0);
  if (dp->buf == ((void*)0)) {
   device_printf(sc->sc_dev,
       "could not allocate buffer\n");
   error = ENOMEM;
   goto fail;
  }
 }

 return (0);
fail:
 otus_free_cmd_list(sc, cmd, ndata);
 return (error);
}
