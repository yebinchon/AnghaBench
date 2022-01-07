
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_softc {struct cf_saved_freq* levels_buf; int saved_freq; int sysctl_ctx; } ;
struct cf_saved_freq {int dummy; } ;
typedef int device_t ;


 int CF_DEBUG (char*,int ) ;
 int M_DEVBUF ;
 int M_TEMP ;
 struct cf_saved_freq* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int cpufreq_dc ;
 int devclass_get_count (int ) ;
 int device_get_nameunit (int ) ;
 struct cpufreq_softc* device_get_softc (int ) ;
 int free (struct cf_saved_freq*,int ) ;
 int link ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
cpufreq_detach(device_t dev)
{
 struct cpufreq_softc *sc;
 struct cf_saved_freq *saved_freq;
 int numdevs;

 CF_DEBUG("shutdown %s\n", device_get_nameunit(dev));
 sc = device_get_softc(dev);
 sysctl_ctx_free(&sc->sysctl_ctx);

 while ((saved_freq = SLIST_FIRST(&sc->saved_freq)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&sc->saved_freq, link);
  free(saved_freq, M_TEMP);
 }


 numdevs = devclass_get_count(cpufreq_dc);
 if (numdevs == 1) {
  CF_DEBUG("final shutdown for %s\n", device_get_nameunit(dev));
  free(sc->levels_buf, M_DEVBUF);
 }

 return (0);
}
