
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {struct uaudio_mixer_node* sc_mixer_root; } ;
struct uaudio_mixer_node {struct uaudio_mixer_node* next; } ;


 int M_USBDEV ;
 int free (struct uaudio_mixer_node*,int ) ;

__attribute__((used)) static void
uaudio_mixer_ctl_free(struct uaudio_softc *sc)
{
 struct uaudio_mixer_node *p_mc;

 while ((p_mc = sc->sc_mixer_root) != ((void*)0)) {
  sc->sc_mixer_root = p_mc->next;
  free(p_mc, M_USBDEV);
 }
}
