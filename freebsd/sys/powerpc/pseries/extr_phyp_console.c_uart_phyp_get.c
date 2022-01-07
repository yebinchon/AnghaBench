
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * str; int * u64; } ;
struct uart_phyp_softc {size_t inbuflen; scalar_t__ protocol; int sc_mtx; TYPE_1__ phyp_inbuf; int vtermid; } ;


 scalar_t__ HVTERMPROT ;
 int H_GET_TERM_CHAR ;
 int H_SUCCESS ;
 int memcpy (void*,int *,size_t) ;
 int memmove (int *,int *,int) ;
 int phyp_pft_hcall (int ,int ,int ,int ,int ,size_t*,int *,int *) ;
 int uart_lock (int *) ;
 int uart_unlock (int *) ;

__attribute__((used)) static int
uart_phyp_get(struct uart_phyp_softc *sc, void *buffer, size_t bufsize)
{
 int err;
 int hdr = 0;

 uart_lock(&sc->sc_mtx);
 if (sc->inbuflen == 0) {
  err = phyp_pft_hcall(H_GET_TERM_CHAR, sc->vtermid,
      0, 0, 0, &sc->inbuflen, &sc->phyp_inbuf.u64[0],
      &sc->phyp_inbuf.u64[1]);
  if (err != H_SUCCESS) {
   uart_unlock(&sc->sc_mtx);
   return (-1);
  }
  hdr = 1;
 }

 if (sc->inbuflen == 0) {
  uart_unlock(&sc->sc_mtx);
  return (0);
 }

 if (bufsize > sc->inbuflen)
  bufsize = sc->inbuflen;

 if ((sc->protocol == HVTERMPROT) && (hdr == 1)) {
  sc->inbuflen = sc->inbuflen - 4;

  memmove(&sc->phyp_inbuf.str[0], &sc->phyp_inbuf.str[4],
      sc->inbuflen);
 }

 memcpy(buffer, sc->phyp_inbuf.str, bufsize);
 sc->inbuflen -= bufsize;
 if (sc->inbuflen > 0)
  memmove(&sc->phyp_inbuf.str[0], &sc->phyp_inbuf.str[bufsize],
      sc->inbuflen);

 uart_unlock(&sc->sc_mtx);
 return (bufsize);
}
