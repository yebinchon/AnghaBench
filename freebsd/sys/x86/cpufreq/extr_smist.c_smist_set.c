
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smist_softc {TYPE_1__* sets; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;
struct TYPE_2__ {int freq; } ;


 scalar_t__ CPUFREQ_CMP (int ,int ) ;
 int DELAY (int) ;
 int DPRINT (int ,char*,int,...) ;
 int EINVAL ;
 int GET_STATE ;
 int SET_STATE ;
 struct smist_softc* device_get_softc (int ) ;
 int getset_state (struct smist_softc*,int*,int ) ;

__attribute__((used)) static int
smist_set(device_t dev, const struct cf_setting *set)
{
 struct smist_softc *sc;
 int rv, state, req_state, try;


 sc = device_get_softc(dev);
 if (CPUFREQ_CMP(set->freq, sc->sets[0].freq))
  req_state = 0;
 else if (CPUFREQ_CMP(set->freq, sc->sets[1].freq))
  req_state = 1;
 else
  return (EINVAL);

 DPRINT(dev, "requested setting %d\n", req_state);

 rv = getset_state(sc, &state, GET_STATE);
 if (state == req_state)
  return (0);

 try = 3;
 do {
  rv = getset_state(sc, &req_state, SET_STATE);


  if (rv)
   DELAY(200);
 } while (rv && --try);
 DPRINT(dev, "set_state return %d, tried %d times\n",
     rv, 4 - try);

 return (rv);
}
