
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int device_printf (int ,char*) ;
 scalar_t__ ess_reset_dsp (struct ess_info*) ;
 scalar_t__ mixer_reinit (int ) ;
 struct ess_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
ess_resume(device_t dev)
{
 struct ess_info *sc;

 sc = pcm_getdevinfo(dev);

 if (ess_reset_dsp(sc)) {
  device_printf(dev, "unable to reset DSP at resume\n");
  return ENXIO;
 }

 if (mixer_reinit(dev)) {
  device_printf(dev, "unable to reinitialize mixer at resume\n");
  return ENXIO;
 }

 return 0;
}
