
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; } ;


 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int printf (char*,unsigned int,unsigned int,unsigned long long) ;

__attribute__((used)) static void
ath_alq_print_beacon_miss(struct if_ath_alq_payload *a)
{

 printf("[%u.%06u] [%llu] BMISS\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));
}
