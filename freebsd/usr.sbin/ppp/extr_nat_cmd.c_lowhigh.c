
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;



__attribute__((used)) static void
lowhigh(u_short *a, u_short *b)
{
  if (a > b) {
    u_short c;

    c = *b;
    *b = *a;
    *a = c;
  }
}
