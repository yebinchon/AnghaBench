
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_jog_softc {scalar_t__ min_freq; } ;
struct jog_rv_args {int slow; int inprogress; int cpu; int mult; } ;
struct cf_setting {scalar_t__ freq; int * spec; } ;
typedef int device_t ;


 int EINVAL ;
 int PCPU_GET (int ) ;
 int cpuid ;
 struct mpc85xx_jog_softc* device_get_softc (int ) ;
 int mpc85xx_jog_set_int ;
 int smp_no_rendezvous_barrier ;
 int smp_rendezvous (int ,int ,int ,struct jog_rv_args*) ;

__attribute__((used)) static int
mpc85xx_jog_set(device_t dev, const struct cf_setting *set)
{
 struct mpc85xx_jog_softc *sc;
 struct jog_rv_args args;

 if (set == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);

 args.slow = (set->freq <= sc->min_freq);
 args.mult = set->spec[0];
 args.cpu = PCPU_GET(cpuid);
 args.inprogress = 1;
 smp_rendezvous(smp_no_rendezvous_barrier, mpc85xx_jog_set_int,
     smp_no_rendezvous_barrier, &args);

 return (0);
}
