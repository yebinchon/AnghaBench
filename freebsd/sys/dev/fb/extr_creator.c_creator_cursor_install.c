
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct creator_softc {int dummy; } ;


 int FFB_DAC ;
 int const FFB_DAC_CUR_BITMAP_P0 ;
 int const FFB_DAC_CUR_BITMAP_P1 ;
 int const FFB_DAC_CUR_COLOR1 ;
 int FFB_DAC_TYPE2 ;
 int FFB_DAC_VALUE2 ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int const) ;
 int creator_cursor_enable (struct creator_softc*,int ) ;
 int ** creator_mouse_pointer ;

__attribute__((used)) static void
creator_cursor_install(struct creator_softc *sc)
{
 int i, j;

 creator_cursor_enable(sc, 0);
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE2, FFB_DAC_CUR_COLOR1);
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE2, 0xffffff);
 FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE2, 0x0);
 for (i = 0; i < 2; i++) {
  FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE2,
      i ? FFB_DAC_CUR_BITMAP_P0 : FFB_DAC_CUR_BITMAP_P1);
  for (j = 0; j < 64; j++) {
   FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE2,
       *(const uint32_t *)(&creator_mouse_pointer[j][0]));
   FFB_WRITE(sc, FFB_DAC, FFB_DAC_VALUE2,
       *(const uint32_t *)(&creator_mouse_pointer[j][4]));
  }
 }
}
