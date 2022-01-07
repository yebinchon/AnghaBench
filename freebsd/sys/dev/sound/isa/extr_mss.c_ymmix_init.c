
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct mss_info {int dummy; } ;


 int OPL3SAx_VOLUMEL ;
 int OPL3SAx_VOLUMER ;
 int SOUND_MASK_BASS ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_TREBLE ;
 int SOUND_MASK_VOLUME ;
 int conf_wr (struct mss_info*,int ,int) ;
 struct mss_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_getdevs (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mss_lock (struct mss_info*) ;
 int mss_unlock (struct mss_info*) ;
 int mssmix_init (struct snd_mixer*) ;

__attribute__((used)) static int
ymmix_init(struct snd_mixer *m)
{
 struct mss_info *mss = mix_getdevinfo(m);

 mssmix_init(m);
 mix_setdevs(m, mix_getdevs(m) | SOUND_MASK_VOLUME | SOUND_MASK_MIC
          | SOUND_MASK_BASS | SOUND_MASK_TREBLE);

 mss_lock(mss);
 conf_wr(mss, OPL3SAx_VOLUMEL, 7);
 conf_wr(mss, OPL3SAx_VOLUMER, 7);
 mss_unlock(mss);

 return 0;
}
