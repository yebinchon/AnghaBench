
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int width ;
typedef char uint32_t ;
typedef int type ;
struct vt_device {struct creatorfb_softc* vd_softc; } ;
struct TYPE_2__ {char fb_height; char fb_width; int fb_bpp; int fb_depth; int fb_stride; int fb_size; int fb_cmsize; int fb_cmap; int fb_pbase; } ;
struct creatorfb_softc {TYPE_1__ fb; int * memt; int memh; } ;
typedef int phandle_t ;
typedef int name ;
typedef char ihandle_t ;
typedef int height ;
typedef int bus_addr_t ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 int COLOR_FORMAT_RGB ;
 int FFB_DFB24 ;
 scalar_t__ OF_decode_addr (int,int ,int*,int *) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_getproplen (int,char*) ;
 int OF_instance_to_package (char) ;
 char OF_open (char*) ;
 struct creatorfb_softc creatorfb_conssoftc ;
 int sparc64_fake_bustag (int,int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int vt_fb_init (struct vt_device*) ;
 int vt_generate_cons_palette (int ,int ,int,int ,int,int,int,int) ;

__attribute__((used)) static int
creatorfb_init(struct vt_device *vd)
{
 struct creatorfb_softc *sc;
 phandle_t chosen;
 phandle_t node;
 ihandle_t handle;
 uint32_t height, width;
 char type[64], name[64];
 bus_addr_t phys;
 int space;


 vd->vd_softc = sc = &creatorfb_conssoftc;

 chosen = OF_finddevice("/chosen");
 OF_getprop(chosen, "stdout", &handle, sizeof(ihandle_t));
 node = OF_instance_to_package(handle);
 if (node == -1) {




  node = OF_finddevice("screen");
  handle = OF_open("screen");
 }
 OF_getprop(node, "device_type", type, sizeof(type));
 if (strcmp(type, "display") != 0)
  return (CN_DEAD);

 OF_getprop(node, "name", name, sizeof(name));
 if (strcmp(name, "SUNW,ffb") != 0 && strcmp(name, "SUNW,afb") != 0)
  return (CN_DEAD);


 if (OF_getproplen(node, "height") != sizeof(height) ||
     OF_getproplen(node, "width") != sizeof(width))
  return (CN_DEAD);

 OF_getprop(node, "height", &height, sizeof(height));
 OF_getprop(node, "width", &width, sizeof(width));

 sc->fb.fb_height = height;
 sc->fb.fb_width = width;
 sc->fb.fb_bpp = sc->fb.fb_depth = 32;
 sc->fb.fb_stride = 8192;
 sc->fb.fb_size = sc->fb.fb_height * sc->fb.fb_stride;


 if (OF_decode_addr(node, FFB_DFB24, &space, &phys) != 0)
  return (CN_DEAD);
 sc->fb.fb_pbase = phys;
 sc->memh = sparc64_fake_bustag(space, phys, &sc->memt[0]);


 vt_generate_cons_palette(sc->fb.fb_cmap, COLOR_FORMAT_RGB,
     255, 0, 255, 8, 255, 16);
 sc->fb.fb_cmsize = 16;

 vt_fb_init(vd);

 return (CN_INTERNAL);
}
