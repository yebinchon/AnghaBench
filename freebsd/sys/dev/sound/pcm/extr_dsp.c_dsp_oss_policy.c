
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_POLICY_MAX ;
 int CHN_POLICY_MIN ;
 int CHN_UNLOCK (struct pcm_channel*) ;
 int EIO ;
 int chn_setlatency (struct pcm_channel*,int) ;

__attribute__((used)) static int
dsp_oss_policy(struct pcm_channel *wrch, struct pcm_channel *rdch, int policy)
{
 int ret;

 if (policy < CHN_POLICY_MIN || policy > CHN_POLICY_MAX)
  return (EIO);


 ret = 0;

 if (rdch) {
  CHN_LOCK(rdch);
  ret = chn_setlatency(rdch, policy);
  CHN_UNLOCK(rdch);
 }

 if (wrch && ret == 0) {
  CHN_LOCK(wrch);
  ret = chn_setlatency(wrch, policy);
  CHN_UNLOCK(wrch);
 }

 if (ret)
  ret = EIO;

 return (ret);
}
