
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct mss_info {int dummy; } ;


 struct mss_info* mix_getdevinfo (struct snd_mixer*) ;
 int mss_lock (struct mss_info*) ;
 int mss_set_recsrc (struct mss_info*,int ) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static u_int32_t
mssmix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct mss_info *mss = mix_getdevinfo(m);

 mss_lock(mss);
 src = mss_set_recsrc(mss, src);
 mss_unlock(mss);
 return src;
}
