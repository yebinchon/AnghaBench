
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_softc {struct dc_mediainfo* dc_mi; int dc_dev; } ;
struct dc_mediainfo {int dc_gp_len; struct dc_mediainfo* dc_next; int * dc_reset_ptr; int dc_reset_len; int * dc_gp_ptr; int dc_media; } ;
struct dc_eblock_mii {int dc_gpr_len; } ;


 int ENOMEM ;
 int IFM_AUTO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_printf (int ,char*) ;
 struct dc_mediainfo* malloc (int,int ,int) ;

__attribute__((used)) static int
dc_decode_leaf_mii(struct dc_softc *sc, struct dc_eblock_mii *l)
{
 struct dc_mediainfo *m;
 uint8_t *p;

 m = malloc(sizeof(struct dc_mediainfo), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (m == ((void*)0)) {
  device_printf(sc->dc_dev, "Could not allocate mediainfo\n");
  return (ENOMEM);
 }

 m->dc_media = IFM_AUTO;
 m->dc_gp_len = l->dc_gpr_len;

 p = (uint8_t *)l;
 p += sizeof(struct dc_eblock_mii);
 m->dc_gp_ptr = p;
 p += 2 * l->dc_gpr_len;
 m->dc_reset_len = *p;
 p++;
 m->dc_reset_ptr = p;

 m->dc_next = sc->dc_mi;
 sc->dc_mi = m;
 return (0);
}
