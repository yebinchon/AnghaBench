
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_char ;
struct ofwfb_softc {int * sc_font; } ;



__attribute__((used)) static int
ofwfb_load_font(video_adapter_t *adp, int page, int size, int width,
    u_char *data, int c, int count)
{
 struct ofwfb_softc *sc;

 sc = (struct ofwfb_softc *)adp;





 sc->sc_font = data;
 return (0);
}
