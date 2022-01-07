
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {int cur_delay; } ;
struct _cfg {int * d; } ;



__attribute__((used)) static int
const_delay_run(struct _qs *q, struct _cfg *arg)
{
 q->cur_delay = arg->d[0];
 return 0;
}
