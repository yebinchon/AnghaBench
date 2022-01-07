
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uma_print_zone ;
 int zone_foreach (int ) ;

void
uma_print_stats(void)
{
 zone_foreach(uma_print_zone);
}
