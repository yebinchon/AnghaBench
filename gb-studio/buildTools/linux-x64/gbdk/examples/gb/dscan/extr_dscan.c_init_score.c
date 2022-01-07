
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pl ;
 scalar_t__ pp ;
 scalar_t__ ps ;
 int show_level (scalar_t__) ;
 int show_score (scalar_t__) ;

void init_score()
{
  ps = 0;
  show_score( ps );
  pp = 0; pl = 0;
  show_level( pl );
}
