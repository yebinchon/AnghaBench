
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int get_io_total (struct kinfo_proc const* const) ;

__attribute__((used)) static int
compare_iototal(const void *arg1, const void *arg2)
{
 const struct kinfo_proc * const p1 = *(const struct kinfo_proc * const *)arg1;
 const struct kinfo_proc * const p2 = *(const struct kinfo_proc * const *)arg2;

 return (get_io_total(p2) - get_io_total(p1));
}
