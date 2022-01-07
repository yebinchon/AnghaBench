
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int ac97_busy; int ac97_status; } ;


 int DELAY (int) ;
 int nm_rd (struct sc_info*,int ,int) ;

__attribute__((used)) static int
nm_waitcd(struct sc_info *sc)
{
 int cnt = 10;
 int fail = 1;

 while (cnt-- > 0) {
  if (nm_rd(sc, sc->ac97_status, 2) & sc->ac97_busy) {
   DELAY(100);
  } else {
   fail = 0;
   break;
  }
 }
 return (fail);
}
