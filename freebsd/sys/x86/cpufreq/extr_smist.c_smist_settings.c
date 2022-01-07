
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smist_softc {TYPE_1__* sets; } ;
struct cf_setting {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ freq; } ;


 scalar_t__ CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 int bcopy (TYPE_1__*,struct cf_setting*,int) ;
 struct smist_softc* device_get_softc (int ) ;
 int smist_get (int ,struct cf_setting*) ;
 int smist_set (int ,TYPE_1__*) ;

__attribute__((used)) static int
smist_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct smist_softc *sc;
 struct cf_setting set;
 int first, i;

 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < 2) {
  *count = 2;
  return (E2BIG);
 }
 sc = device_get_softc(dev);





 for (i = 0; i < 2; i++) {
  if (sc->sets[i].freq == CPUFREQ_VAL_UNKNOWN) {
   first = (i == 0) ? 1 : 0;
   smist_set(dev, &sc->sets[i]);
   smist_get(dev, &set);
   smist_set(dev, &sc->sets[first]);
  }
 }

 bcopy(sc->sets, sets, sizeof(sc->sets));
 *count = 2;

 return (0);
}
