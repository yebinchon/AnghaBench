
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct if_ath_alq_tdma_slot_calc {int avg_minus; int avg_plus; int tsfdelta; int next_slot; int nexttbtt; } ;
struct TYPE_2__ {int tstamp; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;


 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct if_ath_alq_tdma_slot_calc*,int *,int) ;
 int printf (char*,unsigned int,unsigned long long,unsigned long long,unsigned long long,int,int,int) ;

__attribute__((used)) static void
ath_tdma_slot_calc(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tdma_slot_calc t;

 memcpy(&t, &a->payload, sizeof(t));
 printf("[%u] [%llu] SLOTCALC: NEXTTBTT=%llu nextslot=%llu tsfdelta=%d avg (%d/%d)\n",
     (unsigned int) be32toh(a->hdr.tstamp),
     (unsigned long long) be64toh(a->hdr.threadid),
     (unsigned long long) be64toh(t.nexttbtt),
     (unsigned long long) be64toh(t.next_slot),
     (int) be32toh(t.tsfdelta),
     (int) be32toh(t.avg_plus),
     (int) be32toh(t.avg_minus));
}
