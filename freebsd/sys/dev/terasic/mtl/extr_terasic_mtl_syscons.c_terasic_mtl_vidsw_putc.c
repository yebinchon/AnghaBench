
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_4__ {int vi_width; } ;
struct TYPE_5__ {TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int uint8_t ;
typedef int u_int ;
struct terasic_mtl_softc {int dummy; } ;


 int terasic_mtl_text_putc (struct terasic_mtl_softc*,int,int,int ,int ) ;

__attribute__((used)) static int
terasic_mtl_vidsw_putc(video_adapter_t *adp, vm_offset_t off, uint8_t c,
    uint8_t a)
{
 struct terasic_mtl_softc *sc;
 u_int col, row;

 sc = (struct terasic_mtl_softc *)adp;
 col = (off % adp->va_info.vi_width);
 row = (off / adp->va_info.vi_width);
 terasic_mtl_text_putc(sc, col, row, c, a);
 return (0);
}
