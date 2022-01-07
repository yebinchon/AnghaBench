
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int INTSTAT ;
 int ahc_inb (struct ahc_softc*,int ) ;

__attribute__((used)) static __inline void
ahc_flush_device_writes(struct ahc_softc *ahc)
{

 ahc_inb(ahc, INTSTAT);
}
