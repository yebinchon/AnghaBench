
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int FALSE ;
 int TRUE ;
 int set_mouse_resolution (int ,int) ;

__attribute__((used)) static int
mouse_ext_command(KBDC kbdc, int command)
{
 int c;

 c = (command >> 6) & 0x03;
 if (set_mouse_resolution(kbdc, c) != c)
  return (FALSE);
 c = (command >> 4) & 0x03;
 if (set_mouse_resolution(kbdc, c) != c)
  return (FALSE);
 c = (command >> 2) & 0x03;
 if (set_mouse_resolution(kbdc, c) != c)
  return (FALSE);
 c = (command >> 0) & 0x03;
 if (set_mouse_resolution(kbdc, c) != c)
  return (FALSE);
 return (TRUE);
}
