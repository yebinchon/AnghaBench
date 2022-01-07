
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int pause; } ;


 int HCNTRL ;
 scalar_t__ ahc_is_paused (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_pause_bug_fix (struct ahc_softc*) ;

__attribute__((used)) static __inline void
ahc_pause(struct ahc_softc *ahc)
{
 ahc_outb(ahc, HCNTRL, ahc->pause);





 while (ahc_is_paused(ahc) == 0)
  ;

 ahc_pause_bug_fix(ahc);
}
