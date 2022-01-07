
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_tx_cmd {int * buf; } ;
struct otus_softc {int dummy; } ;


 int M_USBDEV ;
 int free (int *,int ) ;

__attribute__((used)) static void
otus_free_cmd_list(struct otus_softc *sc, struct otus_tx_cmd cmd[], int ndata)
{
 int i;


 for (i = 0; i < ndata; i++) {
  struct otus_tx_cmd *dp = &cmd[i];

  if (dp->buf != ((void*)0)) {
   free(dp->buf, M_USBDEV);
   dp->buf = ((void*)0);
  }
 }
}
