
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ if_pkt_info_t ;
typedef TYPE_1__* if_pkt_info_pad_t ;
struct TYPE_2__ {scalar_t__* pkt_val; } ;



__attribute__((used)) static inline void
pkt_info_zero(if_pkt_info_t pi)
{
 if_pkt_info_pad_t pi_pad;

 pi_pad = (if_pkt_info_pad_t)pi;
 pi_pad->pkt_val[0] = 0; pi_pad->pkt_val[1] = 0; pi_pad->pkt_val[2] = 0;
 pi_pad->pkt_val[3] = 0; pi_pad->pkt_val[4] = 0; pi_pad->pkt_val[5] = 0;




}
