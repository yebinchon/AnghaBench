
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dc_softc {struct dc_mediainfo* dc_mi; } ;
struct dc_mediainfo {int dc_media; int* dc_reset_ptr; int dc_reset_len; int* dc_gp_ptr; int dc_gp_len; struct dc_mediainfo* dc_next; } ;


 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_WATCHDOG ;

__attribute__((used)) static void
dc_apply_fixup(struct dc_softc *sc, int media)
{
 struct dc_mediainfo *m;
 uint8_t *p;
 int i;
 uint32_t reg;

 m = sc->dc_mi;

 while (m != ((void*)0)) {
  if (m->dc_media == media)
   break;
  m = m->dc_next;
 }

 if (m == ((void*)0))
  return;

 for (i = 0, p = m->dc_reset_ptr; i < m->dc_reset_len; i++, p += 2) {
  reg = (p[0] | (p[1] << 8)) << 16;
  CSR_WRITE_4(sc, DC_WATCHDOG, reg);
 }

 for (i = 0, p = m->dc_gp_ptr; i < m->dc_gp_len; i++, p += 2) {
  reg = (p[0] | (p[1] << 8)) << 16;
  CSR_WRITE_4(sc, DC_WATCHDOG, reg);
 }
}
