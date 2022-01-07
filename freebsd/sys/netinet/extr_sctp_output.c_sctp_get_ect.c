
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ecn_supported; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;


 int SCTP_ECT0_BIT ;

__attribute__((used)) static uint8_t
sctp_get_ect(struct sctp_tcb *stcb)
{
 if ((stcb != ((void*)0)) && (stcb->asoc.ecn_supported == 1)) {
  return (SCTP_ECT0_BIT);
 } else {
  return (0);
 }
}
