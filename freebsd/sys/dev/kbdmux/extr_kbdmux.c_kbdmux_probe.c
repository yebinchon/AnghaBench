
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int KEYBOARD_NAME ;
 scalar_t__ resource_disabled (int ,int) ;

__attribute__((used)) static int
kbdmux_probe(int unit, void *arg, int flags)
{
 if (resource_disabled(KEYBOARD_NAME, unit))
  return (ENXIO);

 return (0);
}
