
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {scalar_t__ enable; int nconns; scalar_t__* connsenable; scalar_t__* conns; size_t bindas; int bindseqmask; scalar_t__ type; int nid; } ;
struct hdaa_pcm_devinfo {struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int startnode; int endnode; struct hdaa_audio_as* as; } ;
struct hdaa_audio_ctl {int dummy; } ;
struct hdaa_audio_as {scalar_t__ hpredir; scalar_t__ fakeredir; } ;
typedef scalar_t__ nid_t ;


 int HDAA_CTL_IN ;
 int HDAA_CTL_OUT ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int HDA_PARSE_MAXDEPTH ;
 struct hdaa_audio_ctl* hdaa_audio_ctl_amp_get (struct hdaa_devinfo*,int ,int ,int,int) ;
 int hdaa_audio_ctl_dev_set (struct hdaa_audio_ctl*,int,int,int*,int*) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;

__attribute__((used)) static void
hdaa_audio_ctl_dest_volume(struct hdaa_pcm_devinfo *pdevinfo,
    int ossdev, nid_t nid, int index, int mute, int left, int right, int depth)
{
 struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
 struct hdaa_audio_as *as = devinfo->as;
 struct hdaa_widget *w, *wc;
 struct hdaa_audio_ctl *ctl;
 int i, j, consumers, cleft, cright;

 if (depth > HDA_PARSE_MAXDEPTH)
  return;

 w = hdaa_widget_get(devinfo, nid);
 if (w == ((void*)0) || w->enable == 0)
  return;

 if (depth > 0) {


  consumers = 0;
  for (i = devinfo->startnode; i < devinfo->endnode; i++) {
   wc = hdaa_widget_get(devinfo, i);
   if (wc == ((void*)0) || wc->enable == 0)
    continue;
   for (j = 0; j < wc->nconns; j++) {
    if (wc->connsenable[j] && wc->conns[j] == nid)
     consumers++;
   }
  }




  if ((consumers == 2 && (w->bindas < 0 ||
      as[w->bindas].hpredir < 0 || as[w->bindas].fakeredir ||
      (w->bindseqmask & (1 << 15)) == 0)) ||
      consumers > 2)
   return;


  ctl = hdaa_audio_ctl_amp_get(devinfo, w->nid,
      HDAA_CTL_OUT, -1, 1);
  if (ctl)
   hdaa_audio_ctl_dev_set(ctl, ossdev, mute, &left, &right);
 }


 if (w->type == HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX &&
     depth > 0)
  return;

 for (i = 0; i < w->nconns; i++) {
  if (w->connsenable[i] == 0)
   continue;
  if (index >= 0 && i != index)
   continue;
  cleft = left;
  cright = right;
  ctl = hdaa_audio_ctl_amp_get(devinfo, w->nid,
      HDAA_CTL_IN, i, 1);
  if (ctl)
   hdaa_audio_ctl_dev_set(ctl, ossdev, mute, &cleft, &cright);
  hdaa_audio_ctl_dest_volume(pdevinfo, ossdev, w->conns[i], -1,
      mute, cleft, cright, depth + 1);
 }
}
