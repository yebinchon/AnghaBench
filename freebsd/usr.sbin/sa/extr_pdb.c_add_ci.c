
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdinfo {scalar_t__ ci_io; scalar_t__ ci_mem; scalar_t__ ci_stime; scalar_t__ ci_utime; scalar_t__ ci_etime; scalar_t__ ci_calls; } ;



__attribute__((used)) static void
add_ci(const struct cmdinfo *fromcip, struct cmdinfo *tocip)
{
 tocip->ci_calls += fromcip->ci_calls;
 tocip->ci_etime += fromcip->ci_etime;
 tocip->ci_utime += fromcip->ci_utime;
 tocip->ci_stime += fromcip->ci_stime;
 tocip->ci_mem += fromcip->ci_mem;
 tocip->ci_io += fromcip->ci_io;
}
