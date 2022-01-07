
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct mss_info {int bd_id; } ;







 int MODE1_MIXER_DEVICES ;
 int MODE2_MIXER_DEVICES ;
 int MSS_REC_DEVICES ;
 int OPTI930_MIXER_DEVICES ;
 int OPTI931_MIXER_DEVICES ;
 int ad_write (struct mss_info*,int,int) ;
 struct mss_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mix_setrecdevs (struct snd_mixer*,int ) ;
 int mss_lock (struct mss_info*) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static int
mssmix_init(struct snd_mixer *m)
{
 struct mss_info *mss = mix_getdevinfo(m);

 mix_setdevs(m, MODE2_MIXER_DEVICES);
 mix_setrecdevs(m, MSS_REC_DEVICES);
 switch(mss->bd_id) {
 case 129:
  mix_setdevs(m, OPTI930_MIXER_DEVICES);
  break;

 case 128:
  mix_setdevs(m, OPTI931_MIXER_DEVICES);
  mss_lock(mss);
  ad_write(mss, 20, 0x88);
  ad_write(mss, 21, 0x88);
  mss_unlock(mss);
  break;

 case 132:
  mix_setdevs(m, MODE1_MIXER_DEVICES);
  break;

 case 130:
 case 131:

  mss_lock(mss);
  ad_write(mss, 22, 0x88);
  ad_write(mss, 23, 0x88);
  mss_unlock(mss);
  break;
 }
 return 0;
}
