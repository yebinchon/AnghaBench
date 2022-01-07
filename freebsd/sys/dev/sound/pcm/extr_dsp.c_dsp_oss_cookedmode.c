
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int flags; } ;


 int CHN_F_BITPERFECT ;
 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EINVAL ;

__attribute__((used)) static int
dsp_oss_cookedmode(struct pcm_channel *wrch, struct pcm_channel *rdch, int enabled)
{







 if (!(enabled == 1 || enabled == 0))
  return (EINVAL);






 enabled ^= 0x00000001;

 if (wrch != ((void*)0)) {
  CHN_LOCK(wrch);
  wrch->flags &= ~CHN_F_BITPERFECT;
  wrch->flags |= (enabled != 0) ? CHN_F_BITPERFECT : 0x00000000;
  CHN_UNLOCK(wrch);
 }

 if (rdch != ((void*)0)) {
  CHN_LOCK(rdch);
  rdch->flags &= ~CHN_F_BITPERFECT;
  rdch->flags |= (enabled != 0) ? CHN_F_BITPERFECT : 0x00000000;
  CHN_UNLOCK(rdch);
 }

 return (0);
}
