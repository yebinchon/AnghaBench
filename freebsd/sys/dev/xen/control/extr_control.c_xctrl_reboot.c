
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shutdown_nice (int ) ;

__attribute__((used)) static void
xctrl_reboot()
{
 shutdown_nice(0);
}
