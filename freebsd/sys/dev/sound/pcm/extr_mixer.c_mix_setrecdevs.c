
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {char* strings; int* strindex; int nvalues; } ;
struct snd_mixer {int recdevs; int dev; TYPE_1__ enuminfo; } ;
typedef TYPE_1__ oss_mixer_enuminfo ;


 int OSS_ENUM_MAXVALUE ;
 int SOUND_MIXER_NRDEVICES ;
 int device_printf (int ,char*) ;
 int * snd_mixernames ;
 int strlcpy (char*,int ,int) ;

void
mix_setrecdevs(struct snd_mixer *m, u_int32_t v)
{
 oss_mixer_enuminfo *ei;
 char *loc;
 int i, nvalues, nwrote, nleft, ncopied;

 ei = &m->enuminfo;

 nvalues = 0;
 nwrote = 0;
 nleft = sizeof(ei->strings);
 loc = ei->strings;

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if ((1 << i) & v) {
   ei->strindex[nvalues] = nwrote;
   ncopied = strlcpy(loc, snd_mixernames[i], nleft) + 1;


   nwrote += ncopied;
   nleft -= ncopied;
   nvalues++;







   if ((nleft <= 0) || (nvalues >= OSS_ENUM_MAXVALUE)) {
    device_printf(m->dev,
        "mix_setrecdevs:  Not enough room to store device names--please file a bug report.\n");
    device_printf(m->dev,
        "mix_setrecdevs:  Please include details about your sound hardware, OS version, etc.\n");
    break;
   }

   loc = &ei->strings[nwrote];
  }
 }





 ei->nvalues = nvalues;
 m->recdevs = v;
}
