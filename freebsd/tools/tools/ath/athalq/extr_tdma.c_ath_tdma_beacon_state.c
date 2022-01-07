
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int t ;
struct if_ath_alq_tdma_beacon_state {int beacon_tsf; int rx_tsf; } ;
struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;


 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct if_ath_alq_tdma_beacon_state*,int *,int) ;
 int printf (char*,unsigned int,unsigned int,unsigned long long,unsigned long long,unsigned long long,scalar_t__) ;

void
ath_tdma_beacon_state(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tdma_beacon_state t;
 static uint64_t last_beacon_tx = 0;

 memcpy(&t, &a->payload, sizeof(t));

 printf("[%u.%06u] [%llu] BEACON: RX TSF=%llu Beacon TSF=%llu (%d)\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     (unsigned long long) be64toh(t.rx_tsf),
     (unsigned long long) be64toh(t.beacon_tsf),
     be64toh(t.beacon_tsf) - last_beacon_tx);

 last_beacon_tx = be64toh(t.beacon_tsf);
}
