
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int get_io_stats (struct kinfo_proc const*,long*,long*,long*,long*,long*) ;

__attribute__((used)) static int
compare_ivcsw(const void *arg1, const void *arg2)
{
 const struct kinfo_proc *p1 = *(const struct kinfo_proc * const *)arg1;
 const struct kinfo_proc *p2 = *(const struct kinfo_proc * const *)arg2;
 long dummy, flp1, flp2;

 (void) get_io_stats(p1, &dummy, &dummy, &dummy, &dummy, &flp1);
 (void) get_io_stats(p2, &dummy, &dummy, &dummy, &dummy, &flp2);

 return (flp2 - flp1);
}
