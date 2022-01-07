
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcm_channel {int dummy; } ;
struct cdev {int dummy; } ;


 int CHN_UNLOCK (struct pcm_channel*) ;
 int SD_F_PRIO_RD ;
 int SD_F_PRIO_WR ;

__attribute__((used)) static void
relchns(struct cdev *dev, struct pcm_channel *rdch, struct pcm_channel *wrch,
    uint32_t prio)
{
 if (wrch != ((void*)0) && (prio & SD_F_PRIO_WR))
  CHN_UNLOCK(wrch);
 if (rdch != ((void*)0) && (prio & SD_F_PRIO_RD))
  CHN_UNLOCK(rdch);
}
