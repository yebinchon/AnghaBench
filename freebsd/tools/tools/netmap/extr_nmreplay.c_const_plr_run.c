
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _qs {int cur_drop; } ;
struct _cfg {scalar_t__* d; } ;


 scalar_t__ my_random24 () ;

__attribute__((used)) static int
const_plr_run(struct _qs *q, struct _cfg *arg)
{
 (void)arg;
 uint64_t r = my_random24();
 q->cur_drop = r < arg->d[0];

 arg->d[1]++;
 arg->d[2] += q->cur_drop;

 return 0;
}
