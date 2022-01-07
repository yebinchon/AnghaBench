
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long u_int ;
struct adapter {int dummy; } ;


 int W_TCB_T_FLAGS ;
 int set_tcb_field (struct adapter*,int,int ,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static inline int
set_tcb_tflag(struct adapter *sc, int tid, u_int bit_pos, u_int val,
    u_int no_reply)
{

 return (set_tcb_field(sc, tid, W_TCB_T_FLAGS, 1ULL << bit_pos,
     (uint64_t)val << bit_pos, no_reply));
}
