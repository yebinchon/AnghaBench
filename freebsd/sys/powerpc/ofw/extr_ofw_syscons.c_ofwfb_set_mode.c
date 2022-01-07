
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct ofwfb_softc {int sc_depth; int sc_va; int sc_node; } ;
typedef int name ;
typedef int ihandle_t ;
struct TYPE_2__ {int blue; int green; int red; } ;


 int OF_call_method (char*,int ,int,int,int ,int ,int ,int,int*) ;
 int OF_open (char*) ;
 int OF_package_to_path (int ,char*,int) ;
 int V_DISPLAY_ON ;
 int memset (char*,int ,int) ;
 int ofwfb_blank_display (int *,int ) ;
 TYPE_1__* ofwfb_cmap ;
 scalar_t__ ofwfb_reset_on_switch ;

__attribute__((used)) static int
ofwfb_set_mode(video_adapter_t *adp, int mode)
{
 struct ofwfb_softc *sc;
 char name[64];
 ihandle_t ih;
 int i, retval;

 sc = (struct ofwfb_softc *)adp;

 if (ofwfb_reset_on_switch) {




  memset(name, 0, sizeof(name));
  OF_package_to_path(sc->sc_node, name, sizeof(name));
  ih = OF_open(name);

  if (sc->sc_depth == 8) {




   for (i = 0; i < 16; i++) {
    OF_call_method("color!", ih, 4, 1,
         ofwfb_cmap[i].red,
         ofwfb_cmap[i].green,
         ofwfb_cmap[i].blue,
         i,
         &retval);
   }
  }
 }

 ofwfb_blank_display(&sc->sc_va, V_DISPLAY_ON);

 return (0);
}
