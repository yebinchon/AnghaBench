
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isleap (int) ;

int
easter(int year)
{
 int G,
     C,
     H,
     I,
     J,
     L;

 G = year % 19;
 C = year / 100;
 H = (C - C / 4 - (8 * C + 13) / 25 + 19 * G + 15) % 30;
 I = H - (H / 28) * (1 - (H / 28) * (29 / (H + 1)) * ((21 - G) / 11));
 J = (year + year / 4 + I + 2 - C + C / 4) % 7;

 L = I - J;

 if (isleap(year))
  return 31 + 29 + 21 + L + 7;
 else
  return 31 + 28 + 21 + L + 7;
}
