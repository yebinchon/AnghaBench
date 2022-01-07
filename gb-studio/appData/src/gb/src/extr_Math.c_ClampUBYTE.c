
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;



UBYTE ClampUBYTE(UBYTE v, UBYTE min, UBYTE max)
{
  UBYTE t;
  t = v < min ? min : v;
  return t > max ? max : t;
}
