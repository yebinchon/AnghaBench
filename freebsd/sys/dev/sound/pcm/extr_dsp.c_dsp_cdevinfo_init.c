
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int dsp_cdevinfo_pool; } ;
struct dsp_cdevinfo {int dummy; } ;


 int DSP_CDEVINFO_CACHESIZE ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_UNLOCKASSERT (struct snddev_info*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct dsp_cdevinfo*,int ) ;
 int link ;
 struct dsp_cdevinfo* malloc (int,int ,int) ;

void
dsp_cdevinfo_init(struct snddev_info *d)
{
 struct dsp_cdevinfo *cdi;
 int i;

 KASSERT(d != ((void*)0), ("NULL snddev_info"));
 PCM_BUSYASSERT(d);
 PCM_UNLOCKASSERT(d);

 TAILQ_INIT(&d->dsp_cdevinfo_pool);
 for (i = 0; i < DSP_CDEVINFO_CACHESIZE; i++) {
  cdi = malloc(sizeof(*cdi), M_DEVBUF, M_WAITOK | M_ZERO);
  TAILQ_INSERT_HEAD(&d->dsp_cdevinfo_pool, cdi, link);
 }
}
