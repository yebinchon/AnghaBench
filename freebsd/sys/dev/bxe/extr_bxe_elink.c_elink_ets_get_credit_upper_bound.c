
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ELINK_MAXVAL (int,int ) ;
 int ELINK_MAX_PACKET_SIZE ;

__attribute__((used)) static uint32_t elink_ets_get_credit_upper_bound(const uint32_t min_w_val)
{
 const uint32_t credit_upper_bound = (uint32_t)ELINK_MAXVAL((150 * min_w_val),
      ELINK_MAX_PACKET_SIZE);
 return credit_upper_bound;
}
