
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPAL_CEC_POWER_DOWN ;
 int OPAL_CEC_REBOOT ;
 int OPAL_RETURN_CPU ;
 int RB_HALT ;
 int opal_call (int ,...) ;

__attribute__((used)) static void
opal_shutdown(void *arg, int howto)
{

 if (howto & RB_HALT)
  opal_call(OPAL_CEC_POWER_DOWN, 0 );
 else
  opal_call(OPAL_CEC_REBOOT);

 opal_call(OPAL_RETURN_CPU);
}
