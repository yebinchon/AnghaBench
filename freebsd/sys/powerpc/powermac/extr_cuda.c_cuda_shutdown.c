
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {int sc_dev; } ;


 int CMD_POWEROFF ;
 int CMD_RESET ;
 int CUDA_PSEUDO ;
 int RB_HALT ;
 int cuda_poll (int ) ;
 int cuda_send (struct cuda_softc*,int,int,int *) ;

__attribute__((used)) static void
cuda_shutdown(void *xsc, int howto)
{
 struct cuda_softc *sc = xsc;
 uint8_t cmd[] = {CUDA_PSEUDO, 0};

 cmd[1] = (howto & RB_HALT) ? CMD_POWEROFF : CMD_RESET;
 cuda_poll(sc->sc_dev);
 cuda_send(sc, 1, 2, cmd);

 while (1)
  cuda_poll(sc->sc_dev);
}
