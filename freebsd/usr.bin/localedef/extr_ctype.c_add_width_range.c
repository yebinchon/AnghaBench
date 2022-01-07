
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_width (int,int) ;

void
add_width_range(int start, int end, int width)
{
 for (; start <= end; start++) {
  add_width(start, width);
 }
}
