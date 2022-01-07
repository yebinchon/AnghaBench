
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ if_rxd_info_t ;
typedef TYPE_1__* if_rxd_info_pad_t ;
struct TYPE_2__ {scalar_t__* rxd_val; } ;


 int RXD_INFO_SIZE ;
 int RXD_LOOP_BOUND ;

__attribute__((used)) static inline void
rxd_info_zero(if_rxd_info_t ri)
{
 if_rxd_info_pad_t ri_pad;
 int i;

 ri_pad = (if_rxd_info_pad_t)ri;
 for (i = 0; i < RXD_LOOP_BOUND; i += 4) {
  ri_pad->rxd_val[i] = 0;
  ri_pad->rxd_val[i+1] = 0;
  ri_pad->rxd_val[i+2] = 0;
  ri_pad->rxd_val[i+3] = 0;
 }

 ri_pad->rxd_val[RXD_INFO_SIZE-1] = 0;

}
