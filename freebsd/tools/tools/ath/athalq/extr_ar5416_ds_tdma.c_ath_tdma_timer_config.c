
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct if_ath_alq_tdma_timer_config {int dummy; } ;
struct if_ath_alq_payload {int payload; } ;


 int memcpy (struct if_ath_alq_tdma_timer_config*,int *,int) ;

__attribute__((used)) static void
ath_tdma_timer_config(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tdma_timer_config t;

 memcpy(&t, &a->payload, sizeof(t));
}
