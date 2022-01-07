
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int) ;
 int PCMMAXCHAN ;
 int PCMMAXUNIT ;
 int dev_clone ;
 int dsp_clone ;
 int dsp_cmax ;
 int * dsp_ehtag ;
 int dsp_umax ;
 int snd_unit_init () ;

__attribute__((used)) static void
dsp_sysinit(void *p)
{
 if (dsp_ehtag != ((void*)0))
  return;

 snd_unit_init();
 dsp_umax = PCMMAXUNIT;
 dsp_cmax = PCMMAXCHAN;
 dsp_ehtag = EVENTHANDLER_REGISTER(dev_clone, dsp_clone, 0, 1000);
}
