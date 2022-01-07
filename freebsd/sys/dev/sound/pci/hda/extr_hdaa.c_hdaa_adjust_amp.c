
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdaa_widget {size_t bindas; struct hdaa_devinfo* devinfo; } ;
struct hdaa_pcm_devinfo {int ossmask; int* minamp; int* maxamp; } ;
struct hdaa_devinfo {struct hdaa_pcm_devinfo* devs; TYPE_1__* as; } ;
struct TYPE_2__ {struct hdaa_pcm_devinfo* pdevinfo; } ;


 int imax (int,int) ;
 int imin (int,int) ;

__attribute__((used)) static void
hdaa_adjust_amp(struct hdaa_widget *w, int ossdev,
    int found, int minamp, int maxamp)
{
 struct hdaa_devinfo *devinfo = w->devinfo;
 struct hdaa_pcm_devinfo *pdevinfo;

 if (w->bindas >= 0)
  pdevinfo = devinfo->as[w->bindas].pdevinfo;
 else
  pdevinfo = &devinfo->devs[0];
 if (found)
  pdevinfo->ossmask |= (1 << ossdev);
 if (minamp == 0 && maxamp == 0)
  return;
 if (pdevinfo->minamp[ossdev] == 0 && pdevinfo->maxamp[ossdev] == 0) {
  pdevinfo->minamp[ossdev] = minamp;
  pdevinfo->maxamp[ossdev] = maxamp;
 } else {
  pdevinfo->minamp[ossdev] = imax(pdevinfo->minamp[ossdev], minamp);
  pdevinfo->maxamp[ossdev] = imin(pdevinfo->maxamp[ossdev], maxamp);
 }
}
