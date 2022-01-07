
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _qs {unsigned long long cur_tt; unsigned long long cur_len; } ;
struct _cfg {int* d; } ;


 unsigned long long TIME_UNITS ;

__attribute__((used)) static int
const_bw_run(struct _qs *q, struct _cfg *arg)
{
 uint64_t bps = arg->d[0];
 q->cur_tt = bps ? 8ULL* TIME_UNITS * q->cur_len / bps : 0 ;
 return 0;
}
