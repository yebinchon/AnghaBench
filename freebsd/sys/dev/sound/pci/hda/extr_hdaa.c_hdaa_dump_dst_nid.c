
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {scalar_t__ enable; int nid; char* name; scalar_t__ ossmask; scalar_t__ ossdev; int nconns; scalar_t__* connsenable; int bindas; int * conns; } ;
struct hdaa_pcm_devinfo {int dev; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int dummy; } ;
typedef int nid_t ;
typedef int buf ;


 int HDA_PARSE_MAXDEPTH ;
 int device_printf (int ,char*,int,char*) ;
 char* hdaa_audio_ctl_ossmixer_mask2allname (scalar_t__,char*,int) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
hdaa_dump_dst_nid(struct hdaa_pcm_devinfo *pdevinfo, nid_t nid, int depth)
{
 struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
 struct hdaa_widget *w, *cw;
 char buf[64];
 int i;

 if (depth > HDA_PARSE_MAXDEPTH)
  return;

 w = hdaa_widget_get(devinfo, nid);
 if (w == ((void*)0) || w->enable == 0)
  return;

 if (depth == 0)
  device_printf(pdevinfo->dev, "%*s", 4, "");
 else
  device_printf(pdevinfo->dev, "%*s  + <- ", 4 + (depth - 1) * 7, "");
 printf("nid=%d [%s]", w->nid, w->name);

 if (depth > 0) {
  if (w->ossmask == 0) {
   printf("\n");
   return;
  }
  printf(" [src: %s]",
      hdaa_audio_ctl_ossmixer_mask2allname(
   w->ossmask, buf, sizeof(buf)));
  if (w->ossdev >= 0) {
   printf("\n");
   return;
  }
 }
 printf("\n");

 for (i = 0; i < w->nconns; i++) {
  if (w->connsenable[i] == 0)
   continue;
  cw = hdaa_widget_get(devinfo, w->conns[i]);
  if (cw == ((void*)0) || cw->enable == 0 || cw->bindas == -1)
   continue;
  hdaa_dump_dst_nid(pdevinfo, w->conns[i], depth + 1);
 }

}
