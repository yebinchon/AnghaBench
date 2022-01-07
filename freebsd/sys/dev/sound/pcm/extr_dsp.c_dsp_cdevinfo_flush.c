
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int dsp_cdevinfo_pool; } ;
struct dsp_cdevinfo {int dummy; } ;


 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_UNLOCKASSERT (struct snddev_info*) ;
 struct dsp_cdevinfo* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 struct dsp_cdevinfo* TAILQ_NEXT (struct dsp_cdevinfo*,int ) ;
 int free (struct dsp_cdevinfo*,int ) ;
 int link ;

void
dsp_cdevinfo_flush(struct snddev_info *d)
{
 struct dsp_cdevinfo *cdi, *tmp;

 KASSERT(d != ((void*)0), ("NULL snddev_info"));
 PCM_BUSYASSERT(d);
 PCM_UNLOCKASSERT(d);

 cdi = TAILQ_FIRST(&d->dsp_cdevinfo_pool);
 while (cdi != ((void*)0)) {
  tmp = TAILQ_NEXT(cdi, link);
  free(cdi, M_DEVBUF);
  cdi = tmp;
 }
 TAILQ_INIT(&d->dsp_cdevinfo_pool);
}
