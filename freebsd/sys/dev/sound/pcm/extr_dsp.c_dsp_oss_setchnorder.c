
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int chn_oss_setorder (struct pcm_channel*,unsigned long long*) ;

__attribute__((used)) static int
dsp_oss_setchnorder(struct pcm_channel *wrch, struct pcm_channel *rdch, unsigned long long *map)
{
 int ret;

 ret = 0;

 if (wrch != ((void*)0)) {
  CHN_LOCK(wrch);
  ret = chn_oss_setorder(wrch, map);
  CHN_UNLOCK(wrch);
 }

 if (ret == 0 && rdch != ((void*)0)) {
  CHN_LOCK(rdch);
  ret = chn_oss_setorder(rdch, map);
  CHN_UNLOCK(rdch);
 }

 return (ret);
}
