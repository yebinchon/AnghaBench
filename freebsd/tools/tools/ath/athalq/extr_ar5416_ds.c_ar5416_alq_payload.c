
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int len; int op; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; } ;





 int ar5416_decode_rxstatus (struct if_ath_alq_payload*) ;
 int ar5416_decode_txdesc (struct if_ath_alq_payload*) ;
 int ar5416_decode_txstatus (struct if_ath_alq_payload*) ;
 int be16toh (int ) ;
 int be32toh (int ) ;
 int be64toh (int ) ;
 int printf (char*,int,int,int ,int,int) ;

void
ar5416_alq_payload(struct if_ath_alq_payload *a)
{

  switch (be16toh(a->hdr.op)) {
   case 128:
    ar5416_decode_txstatus(a);
    break;
   case 130:
    ar5416_decode_rxstatus(a);
    break;
   case 129:
    ar5416_decode_txdesc(a);
    break;
   default:
    printf("[%d.%06d] [%lld] op: %d; len %d\n",
        be32toh(a->hdr.tstamp_sec),
        be32toh(a->hdr.tstamp_usec),
        be64toh(a->hdr.threadid),
        be16toh(a->hdr.op), be16toh(a->hdr.len));
  }
}
