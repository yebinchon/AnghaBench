
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_pid; int ki_tid; } ;



__attribute__((used)) static int
kinfo_proc_compare(const void *a, const void *b)
{
 int i;

 i = ((const struct kinfo_proc *)a)->ki_pid -
     ((const struct kinfo_proc *)b)->ki_pid;
 if (i != 0)
  return (i);
 i = ((const struct kinfo_proc *)a)->ki_tid -
     ((const struct kinfo_proc *)b)->ki_tid;
 return (i);
}
