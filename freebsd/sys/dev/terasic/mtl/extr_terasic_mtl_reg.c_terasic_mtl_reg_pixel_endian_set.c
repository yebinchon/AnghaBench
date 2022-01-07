
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct terasic_mtl_softc {int dummy; } ;


 int TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP ;
 int TERASIC_MTL_LOCK (struct terasic_mtl_softc*) ;
 int TERASIC_MTL_UNLOCK (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_blend_get (struct terasic_mtl_softc*,int *) ;
 int terasic_mtl_reg_blend_set (struct terasic_mtl_softc*,int ) ;

void
terasic_mtl_reg_pixel_endian_set(struct terasic_mtl_softc *sc, int endian_swap)
{
 uint32_t v;

 TERASIC_MTL_LOCK(sc);
 terasic_mtl_reg_blend_get(sc, &v);
 if (endian_swap)
  v |= TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP;
 else
  v &= ~TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP;
 terasic_mtl_reg_blend_set(sc, v);
 TERASIC_MTL_UNLOCK(sc);
}
