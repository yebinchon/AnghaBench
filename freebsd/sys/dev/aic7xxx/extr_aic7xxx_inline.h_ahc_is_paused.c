
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int HCNTRL ;
 int PAUSE ;
 int ahc_inb (struct ahc_softc*,int ) ;

__attribute__((used)) static __inline int
ahc_is_paused(struct ahc_softc *ahc)
{
 return ((ahc_inb(ahc, HCNTRL) & PAUSE) != 0);
}
