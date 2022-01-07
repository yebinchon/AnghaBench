
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct if_ath_alq_tdma_timer_set {int bt_nextatim; int bt_nextswba; int bt_nextdba; int bt_nexttbtt; int bt_intval; int sc_tdmaswbaprep; int sc_tdmadbaprep; int bt_flags; } ;
struct TYPE_2__ {int threadid; int tstamp_usec; int tstamp_sec; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;


 int be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct if_ath_alq_tdma_timer_set*,int *,int) ;
 int printf (char*,unsigned int,unsigned int,unsigned long long,int,int,int,int,int,int,int,int) ;

void
ath_tdma_timer_set(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tdma_timer_set t;

 memcpy(&t, &a->payload, sizeof(t));
 printf("[%u.%06u] [%llu] TIMERSET: bt_intval=%d nexttbtt=%d "
     "nextdba=%d nextswba=%d nextatim=%d flags=0x%x tdmadbaprep=%d "
     "tdmaswbaprep=%d\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     be32toh(t.bt_intval),
     be32toh(t.bt_nexttbtt),
     be32toh(t.bt_nextdba),
     be32toh(t.bt_nextswba),
     be32toh(t.bt_nextatim),
     be32toh(t.bt_flags),
     be32toh(t.sc_tdmadbaprep),
     be32toh(t.sc_tdmaswbaprep));
}
