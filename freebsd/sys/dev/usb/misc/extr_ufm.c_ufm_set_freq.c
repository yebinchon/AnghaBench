
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufm_softc {int sc_freq; int sc_mtx; } ;


 int EIO ;
 int UFM_CMD0 ;
 int UFM_CMD_SET_FREQ ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ufm_do_req (struct ufm_softc*,int ,int,int,int *) ;

__attribute__((used)) static int
ufm_set_freq(struct ufm_softc *sc, void *addr)
{
 int freq = *(int *)addr;
 mtx_lock(&sc->sc_mtx);
 sc->sc_freq = freq;
 mtx_unlock(&sc->sc_mtx);

 freq = (freq + 10700001) / 12500;


 if (ufm_do_req(sc, UFM_CMD_SET_FREQ,
     freq >> 8, freq, ((void*)0)) != 0) {
  return (EIO);
 }

 if (ufm_do_req(sc, UFM_CMD0,
     0x96, 0xb7, ((void*)0)) != 0) {
  return (EIO);
 }
 return (0);
}
