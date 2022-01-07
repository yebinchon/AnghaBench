
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diff_output (char*,...) ;

__attribute__((used)) static void
range(int a, int b, const char *separator)
{
 diff_output("%d", a > b ? b : a);
 if (a < b)
  diff_output("%s%d", separator, b);
}
