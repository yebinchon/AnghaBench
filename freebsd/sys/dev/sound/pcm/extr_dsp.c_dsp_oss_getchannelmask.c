
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcm_channel {int dummy; } ;


 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EINVAL ;
 int chn_oss_getmask (struct pcm_channel*,int*) ;

__attribute__((used)) static int
dsp_oss_getchannelmask(struct pcm_channel *wrch, struct pcm_channel *rdch,
    int *mask)
{
 struct pcm_channel *ch;
 uint32_t chnmask;
 int ret;

 chnmask = 0;
 ch = (wrch != ((void*)0)) ? wrch : rdch;

 if (ch != ((void*)0)) {
  CHN_LOCK(ch);
  ret = chn_oss_getmask(ch, &chnmask);
  CHN_UNLOCK(ch);
 } else
  ret = EINVAL;

 if (ret == 0)
  *mask = chnmask;

 return (ret);
}
