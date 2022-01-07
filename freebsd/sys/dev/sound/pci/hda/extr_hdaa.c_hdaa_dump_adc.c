
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdaa_widget {scalar_t__ enable; scalar_t__ type; size_t bindas; } ;
struct hdaa_pcm_devinfo {size_t recas; int dev; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int startnode; int endnode; TYPE_2__* chans; TYPE_1__* as; } ;
typedef int nid_t ;
struct TYPE_4__ {int* io; int supp_pcm_size_rate; int supp_stream_formats; } ;
struct TYPE_3__ {int* chans; int num_chans; } ;


 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT ;
 int device_printf (int ,char*) ;
 int hdaa_dump_audio_formats (int ,int ,int ) ;
 int hdaa_dump_dst_nid (struct hdaa_pcm_devinfo*,int,int ) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
hdaa_dump_adc(struct hdaa_pcm_devinfo *pdevinfo)
{
 struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
 struct hdaa_widget *w;
 nid_t *nids;
 int chid, i;

 if (pdevinfo->recas < 0)
  return;

 device_printf(pdevinfo->dev, "Record:\n");

 chid = devinfo->as[pdevinfo->recas].chans[0];
 hdaa_dump_audio_formats(pdevinfo->dev,
     devinfo->chans[chid].supp_stream_formats,
     devinfo->chans[chid].supp_pcm_size_rate);
 for (i = 0; i < devinfo->as[pdevinfo->recas].num_chans; i++) {
  chid = devinfo->as[pdevinfo->recas].chans[i];
  device_printf(pdevinfo->dev, "            ADC:");
  for (nids = devinfo->chans[chid].io; *nids != -1; nids++)
   printf(" %d", *nids);
  printf("\n");
 }

 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->enable == 0)
   continue;
  if (w->type != HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT)
   continue;
  if (w->bindas != pdevinfo->recas)
   continue;
  device_printf(pdevinfo->dev, "\n");
  hdaa_dump_dst_nid(pdevinfo, i, 0);
 }
 device_printf(pdevinfo->dev, "\n");
}
