
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int playchns; int active; int rch; scalar_t__ pch; } ;
typedef int device_t ;


 int ENXIO ;
 int agg_lock (struct agg_info*) ;
 int agg_power (struct agg_info*,int ) ;
 int agg_unlock (struct agg_info*) ;
 int aggch_start_adc (int *) ;
 int aggch_start_dac (scalar_t__) ;
 int device_printf (int ,char*) ;
 scalar_t__ mixer_reinit (int ) ;
 struct agg_info* pcm_getdevinfo (int ) ;
 int powerstate_init ;

__attribute__((used)) static int
agg_resume(device_t dev)
{
 int i;
 struct agg_info *ess = pcm_getdevinfo(dev);

 for (i = 0; i < ess->playchns; i++)
  if (ess->active & (1 << i))
   aggch_start_dac(ess->pch + i);
 if (ess->active & (1 << i))
  aggch_start_adc(&ess->rch);

 agg_lock(ess);
 if (!ess->active)
  agg_power(ess, powerstate_init);
 agg_unlock(ess);

 if (mixer_reinit(dev)) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  return ENXIO;
 }

 return 0;
}
