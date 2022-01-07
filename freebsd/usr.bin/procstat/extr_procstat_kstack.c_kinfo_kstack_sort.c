
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_kstack {int dummy; } ;


 int kinfo_kstack_compare ;
 int qsort (struct kinfo_kstack*,int,int,int ) ;

__attribute__((used)) static void
kinfo_kstack_sort(struct kinfo_kstack *kkstp, int count)
{

        qsort(kkstp, count, sizeof(*kkstp), kinfo_kstack_compare);
}
