
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_data; } ;
struct TYPE_2__ {scalar_t__ queued; } ;


 TYPE_1__ devsoftc ;

__attribute__((used)) static int
filt_devctl_read(struct knote *kn, long hint)
{
 kn->kn_data = devsoftc.queued;
 return (kn->kn_data != 0);
}
