
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pr_osrelease; int pr_osreldate; int pr_cpuset; } ;
struct TYPE_3__ {int td_cpuset; } ;


 int cpuset_ref (int ) ;
 int osreldate ;
 int osrelease ;
 TYPE_2__ prison0 ;
 int strlcpy (int ,int ,int) ;
 TYPE_1__ thread0 ;

void
prison0_init(void)
{

 prison0.pr_cpuset = cpuset_ref(thread0.td_cpuset);
 prison0.pr_osreldate = osreldate;
 strlcpy(prison0.pr_osrelease, osrelease, sizeof(prison0.pr_osrelease));
}
