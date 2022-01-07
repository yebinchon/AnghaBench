
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int dev_clone ;
 int * dsp_ehtag ;

__attribute__((used)) static void
dsp_sysuninit(void *p)
{
 if (dsp_ehtag == ((void*)0))
  return;
 EVENTHANDLER_DEREGISTER(dev_clone, dsp_ehtag);
 dsp_ehtag = ((void*)0);
}
