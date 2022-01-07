
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int INTSTAT ;
 int ahd_inb (struct ahd_softc*,int ) ;

__attribute__((used)) static __inline void
ahd_flush_device_writes(struct ahd_softc *ahd)
{

 ahd_inb(ahd, INTSTAT);
}
