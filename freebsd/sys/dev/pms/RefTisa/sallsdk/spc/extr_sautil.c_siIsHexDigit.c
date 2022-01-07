
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int siIsHexDigit(char a)
{
  return ( (((a) >= 'a') && ((a) <= 'z')) ||
            (((a) >= 'A') && ((a) <= 'Z')) ||
            (((a) >= '0') && ((a) <= '9')) ||
            ( (a) == '*'));
}
