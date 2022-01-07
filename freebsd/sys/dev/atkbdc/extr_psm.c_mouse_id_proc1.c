
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int FALSE ;
 int TRUE ;
 int get_mouse_status (int ,int*,int ,int) ;
 int set_mouse_resolution (int ,int) ;
 scalar_t__ set_mouse_scaling (int ,int) ;

__attribute__((used)) static int mouse_id_proc1(KBDC kbdc, int res, int scale, int *status)
{
 if (set_mouse_resolution(kbdc, res) != res)
  return (FALSE);
 if (set_mouse_scaling(kbdc, scale) &&
     set_mouse_scaling(kbdc, scale) &&
     set_mouse_scaling(kbdc, scale) &&
     (get_mouse_status(kbdc, status, 0, 3) >= 3))
  return (TRUE);
 return (FALSE);
}
