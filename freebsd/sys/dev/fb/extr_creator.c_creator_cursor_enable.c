
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int sc_flags; } ;


 int CREATOR_CURINV ;
 int FFB_DAC ;
 int FFB_DAC_CUR_CTRL ;
 int FFB_DAC_CUR_CTRL_P0 ;
 int FFB_DAC_CUR_CTRL_P1 ;
 int FFB_DAC_TYPE2 ;
 int FFB_DAC_VALUE2 ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;

__attribute__((used)) static void
creator_cursor_enable(struct creator_softc *sc, int onoff)
{
 int v;

 FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE2, FFB_DAC_CUR_CTRL);
 if (sc->sc_flags & CREATOR_CURINV)
  v = onoff ? FFB_DAC_CUR_CTRL_P0 | FFB_DAC_CUR_CTRL_P1 : 0;
 else
  v = onoff ? 0 : FFB_DAC_CUR_CTRL_P0 | FFB_DAC_CUR_CTRL_P1;
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE2, v);
}
