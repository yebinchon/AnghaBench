
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int dummy; } ;


 int GEN_TEST_CNTL ;
 int HWCURSOR_ENABLE ;
 int regr (struct machfb_softc*,int ) ;
 int regw (struct machfb_softc*,int ,int) ;

__attribute__((used)) static void
machfb_cursor_enable(struct machfb_softc *sc, int onoff)
{

 if (onoff)
  regw(sc, GEN_TEST_CNTL,
      regr(sc, GEN_TEST_CNTL) | HWCURSOR_ENABLE);
 else
  regw(sc, GEN_TEST_CNTL,
      regr(sc, GEN_TEST_CNTL) &~ HWCURSOR_ENABLE);
}
