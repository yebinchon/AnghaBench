
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct mss_info {int dummy; } ;


 struct mss_info* mix_getdevinfo (struct snd_mixer*) ;
 int mss_lock (struct mss_info*) ;
 int mss_mixer_set (struct mss_info*,unsigned int,unsigned int,unsigned int) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static int
mssmix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct mss_info *mss = mix_getdevinfo(m);

 mss_lock(mss);
 mss_mixer_set(mss, dev, left, right);
 mss_unlock(mss);

 return left | (right << 8);
}
