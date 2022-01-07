
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int ORDERKEY_CPTICKS (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_MEM (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_PCTCPU (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_PRIO (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_RSSIZE (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_STATE (struct kinfo_proc const*,struct kinfo_proc const*) ;
 int ORDERKEY_THREADS (struct kinfo_proc const*,struct kinfo_proc const*) ;

__attribute__((used)) static int
compare_threads(const void *arg1, const void *arg2)
{
 const struct kinfo_proc *p1 = *(const struct kinfo_proc * const *)arg1;
 const struct kinfo_proc *p2 = *(const struct kinfo_proc * const *)arg2;

 ORDERKEY_THREADS(p1, p2);
 ORDERKEY_PCTCPU(p1, p2);
 ORDERKEY_CPTICKS(p1, p2);
 ORDERKEY_STATE(p1, p2);
 ORDERKEY_PRIO(p1, p2);
 ORDERKEY_RSSIZE(p1, p2);
 ORDERKEY_MEM(p1, p2);

 return (0);
}
