
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct ksched {struct timespec rr_interval; } ;



int
ksched_rr_get_interval(struct ksched *ksched, struct thread *td,
    struct timespec *timespec)
{

 *timespec = ksched->rr_interval;
 return (0);
}
