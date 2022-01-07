
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _qs {int cur_delay; } ;
struct _cfg {int* d; } ;


 int my_random24 () ;

__attribute__((used)) static int
uniform_delay_run(struct _qs *q, struct _cfg *arg)
{
 uint64_t x = my_random24();
 q->cur_delay = arg->d[0] + ((arg->d[2] * x) >> 24);


 return 0;
}
