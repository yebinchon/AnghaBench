
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diff_output (char*,int,...) ;

__attribute__((used)) static void
uni_range(int a, int b)
{
 if (a < b)
  diff_output("%d,%d", a, b - a + 1);
 else if (a == b)
  diff_output("%d", b);
 else
  diff_output("%d,0", b);
}
