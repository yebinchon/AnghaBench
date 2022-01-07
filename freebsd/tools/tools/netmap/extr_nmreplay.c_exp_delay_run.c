
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _qs {scalar_t__ cur_delay; } ;
struct _cfg {scalar_t__ arg; } ;


 int PTS_D_EXP ;
 int RD (int,char*,unsigned long long) ;
 int my_random24 () ;

__attribute__((used)) static int
exp_delay_run(struct _qs *q, struct _cfg *arg)
{
 uint64_t *t = (uint64_t *)arg->arg;
        q->cur_delay = t[my_random24() & (PTS_D_EXP - 1)];
 RD(5, "delay %llu", (unsigned long long)q->cur_delay);
        return 0;
}
