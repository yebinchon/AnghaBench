
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_swap {double ksw_total; double ksw_used; int ksw_devname; } ;
struct TYPE_2__ {double ksw_total; double ksw_used; } ;


 int nswdev ;
 int print_swap_line (int ,double,double,double,double) ;
 TYPE_1__ swtot ;
 scalar_t__ totalflag ;

__attribute__((used)) static void
print_swap(struct kvm_swap *ksw)
{

 swtot.ksw_total += ksw->ksw_total;
 swtot.ksw_used += ksw->ksw_used;
 ++nswdev;
 if (totalflag == 0)
  print_swap_line(ksw->ksw_devname, ksw->ksw_total,
      ksw->ksw_used, ksw->ksw_total - ksw->ksw_used,
      (ksw->ksw_used * 100.0) / ksw->ksw_total);
}
