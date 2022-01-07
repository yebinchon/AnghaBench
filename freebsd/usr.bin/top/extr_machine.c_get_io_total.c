
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 long get_io_stats (struct kinfo_proc const*,long*,long*,long*,long*,long*) ;

__attribute__((used)) static long
get_io_total(const struct kinfo_proc *pp)
{
 long dummy;

 return (get_io_stats(pp, &dummy, &dummy, &dummy, &dummy, &dummy));
}
