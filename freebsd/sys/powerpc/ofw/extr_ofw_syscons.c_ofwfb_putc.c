
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int video_adapter_t ;
typedef int uint8_t ;
struct ofwfb_softc {int (* sc_putc ) (int *,int ,int ,int ) ;} ;


 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static int
ofwfb_putc(video_adapter_t *adp, vm_offset_t off, uint8_t c, uint8_t a)
{
 struct ofwfb_softc *sc;

 sc = (struct ofwfb_softc *)adp;

 return ((*sc->sc_putc)(adp, off, c, a));
}
