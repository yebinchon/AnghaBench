
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_sdcard_softc {int as_flags; int as_state; } ;


 int ALTERA_SDCARD_ASR_CARDPRESENT ;
 int ALTERA_SDCARD_FLAG_DETACHREQ ;
 int ALTERA_SDCARD_LOCK_ASSERT (struct altera_sdcard_softc*) ;
 int ALTERA_SDCARD_STATE_DETACHED ;
 int ALTERA_SDCARD_STATE_NOCARD ;
 int altera_sdcard_read_asr (struct altera_sdcard_softc*) ;

__attribute__((used)) static void
altera_sdcard_task_badcard(struct altera_sdcard_softc *sc)
{

 ALTERA_SDCARD_LOCK_ASSERT(sc);




 if (sc->as_flags & ALTERA_SDCARD_FLAG_DETACHREQ) {
  sc->as_state = ALTERA_SDCARD_STATE_DETACHED;
  return;
 }





 if (!(altera_sdcard_read_asr(sc) & ALTERA_SDCARD_ASR_CARDPRESENT))
  sc->as_state = ALTERA_SDCARD_STATE_NOCARD;
}
