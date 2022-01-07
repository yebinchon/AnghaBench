
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_HALT ;
 int RB_POWEROFF ;
 int shutdown_nice (int) ;

__attribute__((used)) static void
xctrl_poweroff()
{
 shutdown_nice(RB_POWEROFF|RB_HALT);
}
