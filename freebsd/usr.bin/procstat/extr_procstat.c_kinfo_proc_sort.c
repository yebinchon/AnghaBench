
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int kinfo_proc_compare ;
 int qsort (struct kinfo_proc*,int,int,int ) ;

void
kinfo_proc_sort(struct kinfo_proc *kipp, int count)
{

 qsort(kipp, count, sizeof(*kipp), kinfo_proc_compare);
}
