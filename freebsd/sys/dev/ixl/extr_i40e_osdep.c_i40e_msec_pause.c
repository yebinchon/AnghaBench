
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SCHEDULER_STOPPED () ;
 scalar_t__ cold ;
 int i40e_msec_delay (int) ;
 int ixl_ms_scale (int) ;
 int pause (char*,int ) ;

void
i40e_msec_pause(int msecs)
{
 if (cold || SCHEDULER_STOPPED())
  i40e_msec_delay(msecs);
 else

  pause("ixl", ixl_ms_scale(msecs));
}
