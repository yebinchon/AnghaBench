
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viawd_softc {unsigned int timeout; } ;


 int VIAWD_MEM_COUNT ;
 unsigned int VIAWD_MEM_COUNT_MAX ;
 unsigned int VIAWD_MEM_COUNT_MIN ;
 int viawd_write_4 (struct viawd_softc*,int ,unsigned int) ;

__attribute__((used)) static void
viawd_tmr_set(struct viawd_softc *sc, unsigned int timeout)
{


 if (timeout < VIAWD_MEM_COUNT_MIN)
  timeout = VIAWD_MEM_COUNT_MIN;
 else if (timeout > VIAWD_MEM_COUNT_MAX)
  timeout = VIAWD_MEM_COUNT_MAX;

 viawd_write_4(sc, VIAWD_MEM_COUNT, timeout);
 sc->timeout = timeout;
}
