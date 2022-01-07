
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct _qs {int cur_len; int cur_drop; } ;
struct _cfg {int* d; scalar_t__* arg; } ;


 int MAX_PKT ;
 int RD (int,char*,int,int) ;
 scalar_t__ my_random24 () ;

__attribute__((used)) static int
const_ber_run(struct _qs *q, struct _cfg *arg)
{
 int l = q->cur_len;
 uint64_t r = my_random24();
 uint32_t *plr = arg->arg;

 if (l >= MAX_PKT) {
  RD(5, "pkt len %d too large, trim to %d", l, MAX_PKT-1);
  l = MAX_PKT-1;
 }
 q->cur_drop = r < plr[l];

 arg->d[1] += l * 8;
 arg->d[2] += q->cur_drop;

 return 0;
}
