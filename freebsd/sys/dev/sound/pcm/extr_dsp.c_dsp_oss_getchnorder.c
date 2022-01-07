
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EINVAL ;
 int chn_oss_getorder (struct pcm_channel*,unsigned long long*) ;

__attribute__((used)) static int
dsp_oss_getchnorder(struct pcm_channel *wrch, struct pcm_channel *rdch, unsigned long long *map)
{
 struct pcm_channel *ch;
 int ret;

 ch = (wrch != ((void*)0)) ? wrch : rdch;
 if (ch != ((void*)0)) {
  CHN_LOCK(ch);
  ret = chn_oss_getorder(ch, map);
  CHN_UNLOCK(ch);
 } else
  ret = EINVAL;

 return (ret);
}
