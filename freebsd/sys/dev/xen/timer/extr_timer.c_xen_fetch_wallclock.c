
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct pvclock_wall_clock {int dummy; } ;
struct TYPE_3__ {int wc_version; } ;
typedef TYPE_1__ shared_info_t ;


 TYPE_1__* HYPERVISOR_shared_info ;
 int pvclock_get_wallclock (struct pvclock_wall_clock*,struct timespec*) ;

__attribute__((used)) static void
xen_fetch_wallclock(struct timespec *ts)
{
 shared_info_t *src = HYPERVISOR_shared_info;
 struct pvclock_wall_clock *wc;

 wc = (struct pvclock_wall_clock *) &src->wc_version;

 pvclock_get_wallclock(wc, ts);
}
