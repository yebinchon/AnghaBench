
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct if_ath_alq_tdma_tsf_adjust {int tsf64_new; int tsfdelta; int tsf64_old; } ;
struct TYPE_2__ {int tstamp; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;


 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct if_ath_alq_tdma_tsf_adjust*,int *,int) ;
 int printf (char*,unsigned int,unsigned long long,unsigned long long,int,unsigned long long) ;

__attribute__((used)) static void
ath_tdma_tsf_adjust(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tdma_tsf_adjust t;

 memcpy(&t, &a->payload, sizeof(t));
 printf("[%u] [%llu] TSFADJUST: TSF64 was %llu, adj=%d, now %llu\n",
     (unsigned int) be32toh(a->hdr.tstamp),
     (unsigned long long) be64toh(a->hdr.threadid),
     (unsigned long long) be64toh(t.tsf64_old),
     (int) be32toh(t.tsfdelta),
     (unsigned long long) be64toh(t.tsf64_new));
}
