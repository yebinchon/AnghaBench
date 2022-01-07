
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long hard_limit; int target_pages; } ;


 int balloon_process ;
 TYPE_1__ bs ;
 int max (unsigned long,int ) ;
 int minimum_target () ;
 int wakeup (int ) ;

__attribute__((used)) static void
set_new_target(unsigned long target)
{

 bs.hard_limit = ~0UL;
 bs.target_pages = max(target, minimum_target());
 wakeup(balloon_process);
}
