
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct cs4231_softc {int sc_flags; } ;
struct cs4231_channel {scalar_t__ dir; int buffer; struct cs4231_softc* parent; } ;
typedef int kobj_t ;


 int APC_CVA ;
 int APC_PVA ;
 scalar_t__ APC_READ (struct cs4231_softc*,int ) ;
 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_SBUS ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 scalar_t__ EBDMA_C_READ (struct cs4231_softc*,int ) ;
 int EBDMA_DADDR ;
 scalar_t__ EBDMA_P_READ (struct cs4231_softc*,int ) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ sndbuf_getbufaddr (int ) ;
 scalar_t__ sndbuf_getsize (int ) ;

__attribute__((used)) static u_int32_t
cs4231_chan_getptr(kobj_t obj, void *data)
{
 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 u_int32_t cur, ptr, sz;

 ch = data;
 sc = ch->parent;

 CS4231_LOCK(sc);
 if ((sc->sc_flags & CS4231_SBUS) != 0)
  cur = (ch->dir == PCMDIR_PLAY) ? APC_READ(sc, APC_PVA) :
      APC_READ(sc, APC_CVA);
 else
  cur = (ch->dir == PCMDIR_PLAY) ? EBDMA_P_READ(sc, EBDMA_DADDR) :
   EBDMA_C_READ(sc, EBDMA_DADDR);
 sz = sndbuf_getsize(ch->buffer);
 ptr = cur - sndbuf_getbufaddr(ch->buffer) + sz;
 CS4231_UNLOCK(sc);

 ptr %= sz;
 return (ptr);
}
