
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 scalar_t__ PSMD_RES_LOW ;
 int get_mouse_status (int ,int*,int ,int) ;
 scalar_t__ set_mouse_resolution (int ,scalar_t__) ;
 scalar_t__ set_mouse_scaling (int ,int) ;

__attribute__((used)) static int
get_mouse_buttons(KBDC kbdc)
{
 int c = 2;
 int status[3];
 if (set_mouse_resolution(kbdc, PSMD_RES_LOW) != PSMD_RES_LOW)
  return (c);
 if (set_mouse_scaling(kbdc, 1) && set_mouse_scaling(kbdc, 1) &&
     set_mouse_scaling(kbdc, 1) &&
     get_mouse_status(kbdc, status, 0, 3) >= 3 && status[1] != 0)
  return (status[1]);
 return (c);
}
