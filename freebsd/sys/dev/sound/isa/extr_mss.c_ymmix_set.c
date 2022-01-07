
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct mss_info {int dummy; } ;


 int OPL3SAx_BASS ;
 int OPL3SAx_MIC ;
 int OPL3SAx_TREBLE ;
 int OPL3SAx_VOLUMEL ;
 int OPL3SAx_VOLUMER ;




 int conf_wr (struct mss_info*,int ,int) ;
 struct mss_info* mix_getdevinfo (struct snd_mixer*) ;
 int mss_lock (struct mss_info*) ;
 int mss_mixer_set (struct mss_info*,unsigned int,unsigned int,unsigned int) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static int
ymmix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct mss_info *mss = mix_getdevinfo(m);
 int t, l, r;

 mss_lock(mss);
 switch (dev) {
 case 128:
  if (left) t = 15 - (left * 15) / 100;
  else t = 0x80;
  conf_wr(mss, OPL3SAx_VOLUMEL, t);
  if (right) t = 15 - (right * 15) / 100;
  else t = 0x80;
  conf_wr(mss, OPL3SAx_VOLUMER, t);
  break;

 case 130:
  t = left;
  if (left) t = 31 - (left * 31) / 100;
  else t = 0x80;
  conf_wr(mss, OPL3SAx_MIC, t);
  break;

 case 131:
  l = (left * 7) / 100;
  r = (right * 7) / 100;
  t = (r << 4) | l;
  conf_wr(mss, OPL3SAx_BASS, t);
  break;

 case 129:
  l = (left * 7) / 100;
  r = (right * 7) / 100;
  t = (r << 4) | l;
  conf_wr(mss, OPL3SAx_TREBLE, t);
  break;

 default:
  mss_mixer_set(mss, dev, left, right);
 }
 mss_unlock(mss);

 return left | (right << 8);
}
