
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_device {struct ps3fb_softc* vd_softc; } ;
struct TYPE_2__ {int fb_depth; int fb_height; int fb_width; int fb_stride; int fb_size; int fb_bpp; int fb_vbase; int fb_cmsize; int fb_cmap; int fb_flags; } ;
struct ps3fb_softc {int sc_fbcontext; TYPE_1__ fb_info; } ;
typedef int linux_video_mode ;


 int CN_INTERNAL ;
 int COLOR_FORMAT_RGB ;
 int FB_FLAG_NOWRITE ;
 int L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int TUNABLE_STR_FETCH (char*,char*,int) ;
 int bzero (char*,int) ;
 int lv1_gpu_context_attribute (int ,int ,int,int ,int ,int ) ;
 struct ps3fb_softc ps3fb_softc ;
 int sscanf (char*,char*,int*) ;
 int vt_fb_init (struct vt_device*) ;
 int vt_generate_cons_palette (int ,int ,int,int,int,int,int,int ) ;

__attribute__((used)) static int
ps3fb_init(struct vt_device *vd)
{
 struct ps3fb_softc *sc;
 char linux_video_mode[24];
 int linux_video_mode_num = 0;


 vd->vd_softc = sc = &ps3fb_softc;

 sc->fb_info.fb_depth = 32;
 sc->fb_info.fb_height = 1080;
 sc->fb_info.fb_width = 1920;


 bzero(linux_video_mode, sizeof(linux_video_mode));
 TUNABLE_STR_FETCH("video", linux_video_mode, sizeof(linux_video_mode));
 sscanf(linux_video_mode, "ps3fb:mode:%d", &linux_video_mode_num);

 switch (linux_video_mode_num) {
 case 1:
 case 2:
  sc->fb_info.fb_height = 480;
  sc->fb_info.fb_width = 720;
  break;
 case 3:
 case 8:
  sc->fb_info.fb_height = 720;
  sc->fb_info.fb_width = 1280;
  break;
 case 4:
 case 5:
 case 9:
 case 10:
  sc->fb_info.fb_height = 1080;
  sc->fb_info.fb_width = 1920;
  break;
 case 6:
 case 7:
  sc->fb_info.fb_height = 576;
  sc->fb_info.fb_width = 720;
  break;
 case 11:
  sc->fb_info.fb_height = 768;
  sc->fb_info.fb_width = 1024;
  break;
 case 12:
  sc->fb_info.fb_height = 1024;
  sc->fb_info.fb_width = 1280;
  break;
 case 13:
  sc->fb_info.fb_height = 1200;
  sc->fb_info.fb_width = 1920;
  break;
 }


 TUNABLE_INT_FETCH("hw.ps3fb.height", &sc->fb_info.fb_height);
 TUNABLE_INT_FETCH("hw.ps3fb.width", &sc->fb_info.fb_width);

 sc->fb_info.fb_stride = sc->fb_info.fb_width*4;
 sc->fb_info.fb_size = sc->fb_info.fb_height * sc->fb_info.fb_stride;
 sc->fb_info.fb_bpp = sc->fb_info.fb_stride / sc->fb_info.fb_width * 8;





 sc->fb_info.fb_vbase = 0x10000000;
 sc->fb_info.fb_flags |= FB_FLAG_NOWRITE;
 sc->fb_info.fb_cmsize = 16;


 vt_generate_cons_palette(sc->fb_info.fb_cmap, COLOR_FORMAT_RGB,
     255, 16, 255, 8, 255, 0);


 lv1_gpu_context_attribute(sc->sc_fbcontext,
     L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, 0, 0, 0, 0);
 lv1_gpu_context_attribute(sc->sc_fbcontext,
     L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, 1, 0, 0, 0);

 vt_fb_init(vd);

 return (CN_INTERNAL);
}
