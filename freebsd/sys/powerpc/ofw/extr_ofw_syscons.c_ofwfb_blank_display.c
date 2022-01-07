
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct ofwfb_softc {int (* sc_blank ) (int *,int) ;} ;


 int stub1 (int *,int) ;

__attribute__((used)) static int
ofwfb_blank_display(video_adapter_t *adp, int mode)
{
 struct ofwfb_softc *sc;

 sc = (struct ofwfb_softc *)adp;

 return ((*sc->sc_blank)(adp, mode));
}
