
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_kstack {int kkst_tid; } ;



__attribute__((used)) static int
kinfo_kstack_compare(const void *a, const void *b)
{

        return ((const struct kinfo_kstack *)a)->kkst_tid -
            ((const struct kinfo_kstack *)b)->kkst_tid;
}
