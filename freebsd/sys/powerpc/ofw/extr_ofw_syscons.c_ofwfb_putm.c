
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct ofwfb_softc {int (* sc_putm ) (int *,int,int,int *,int ,int,int) ;} ;


 int stub1 (int *,int,int,int *,int ,int,int) ;

__attribute__((used)) static int
ofwfb_putm(video_adapter_t *adp, int x, int y, uint8_t *pixel_image,
    uint32_t pixel_mask, int size, int width)
{
 struct ofwfb_softc *sc;

 sc = (struct ofwfb_softc *)adp;

 return ((*sc->sc_putm)(adp, x, y, pixel_image, pixel_mask, size,
     width));
}
