
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_info {int rsrc; int rdst; int quality; int channels; } ;
struct pcm_feeder {struct z_info* data; } ;







__attribute__((used)) static int
z_resampler_get(struct pcm_feeder *f, int what)
{
 struct z_info *info;

 info = f->data;

 switch (what) {
 case 128:
  return (info->rsrc);
  break;
 case 130:
  return (info->rdst);
  break;
 case 129:
  return (info->quality);
  break;
 case 131:
  return (info->channels);
  break;
 default:
  break;
 }

 return (-1);
}
