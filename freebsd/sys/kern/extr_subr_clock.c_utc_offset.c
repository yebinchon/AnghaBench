
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adjkerntz ;
 scalar_t__ wall_cmos_clock ;

int
utc_offset(void)
{

 return (wall_cmos_clock ? adjkerntz : 0);
}
