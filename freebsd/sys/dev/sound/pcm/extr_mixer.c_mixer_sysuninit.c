
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int dev_clone ;
 int * mixer_ehtag ;

__attribute__((used)) static void
mixer_sysuninit(void *p)
{
 if (mixer_ehtag == ((void*)0))
  return;
 EVENTHANDLER_DEREGISTER(dev_clone, mixer_ehtag);
 mixer_ehtag = ((void*)0);
}
