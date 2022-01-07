
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int) ;
 int dev_clone ;
 int mixer_clone ;
 int * mixer_ehtag ;

__attribute__((used)) static void
mixer_sysinit(void *p)
{
 if (mixer_ehtag != ((void*)0))
  return;
 mixer_ehtag = EVENTHANDLER_REGISTER(dev_clone, mixer_clone, 0, 1000);
}
