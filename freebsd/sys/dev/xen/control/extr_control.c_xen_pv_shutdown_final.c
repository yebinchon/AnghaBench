
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_shutdown (int ) ;
 int RB_HALT ;
 int RB_POWEROFF ;
 int SHUTDOWN_poweroff ;
 int SHUTDOWN_reboot ;

__attribute__((used)) static void
xen_pv_shutdown_final(void *arg, int howto)
{






 if (howto & (RB_HALT | RB_POWEROFF))
  HYPERVISOR_shutdown(SHUTDOWN_poweroff);
 else
  HYPERVISOR_shutdown(SHUTDOWN_reboot);
}
