
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long current_pages; unsigned long balloon_low; unsigned long balloon_high; int hard_limit; int target_pages; } ;


 TYPE_1__ bs ;
 unsigned long min (int ,int ) ;

__attribute__((used)) static unsigned long
current_target(void)
{
 unsigned long target = min(bs.target_pages, bs.hard_limit);
 if (target > (bs.current_pages + bs.balloon_low + bs.balloon_high))
  target = bs.current_pages + bs.balloon_low + bs.balloon_high;
 return (target);
}
