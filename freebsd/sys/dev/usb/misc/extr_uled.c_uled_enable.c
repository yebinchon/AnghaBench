
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uled_softc {int sc_flags; int sc_mtx; int sc_state; } ;
typedef int cmdbuf ;


 int ULED_ENABLED ;
 int ULED_FLAG_BLINK1 ;
 int UR_SET_REPORT ;
 int UT_WRITE_CLASS_INTERFACE ;
 int * blink1 ;
 int * dl100b ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uled_ctrl_msg (struct uled_softc*,int ,int ,int,int ,int *,int) ;

__attribute__((used)) static int
uled_enable(struct uled_softc *sc)
{
 uint8_t *cmdbuf;
 int error;

 cmdbuf = (sc->sc_flags & ULED_FLAG_BLINK1) ? blink1 : dl100b;

 sc->sc_state |= ULED_ENABLED;
 mtx_lock(&sc->sc_mtx);
 error = uled_ctrl_msg(sc, UT_WRITE_CLASS_INTERFACE, UR_SET_REPORT,
     0x200, 0, cmdbuf, sizeof(cmdbuf));
 mtx_unlock(&sc->sc_mtx);
 return (error);
}
