
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {int cur_tt; } ;
struct _cfg {int * f; } ;



__attribute__((used)) static int
real_bw_run(struct _qs *q, struct _cfg *arg)
{
 q->cur_tt /= arg->f[0];
 return 0;
}
