
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tcp_bbr {int rc_bbr_substate; } ;



__attribute__((used)) static inline uint8_t
bbr_state_val(struct tcp_bbr *bbr)
{
 return(bbr->rc_bbr_substate);
}
