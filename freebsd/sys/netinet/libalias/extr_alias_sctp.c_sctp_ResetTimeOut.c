
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_assoc {int exp; } ;
struct libalias {int dummy; } ;


 int sctp_AddTimeOut (struct libalias*,struct sctp_nat_assoc*) ;
 int sctp_RmTimeOut (struct libalias*,struct sctp_nat_assoc*) ;

__attribute__((used)) static void
sctp_ResetTimeOut(struct libalias *la, struct sctp_nat_assoc *assoc, int newexp)
{
 if (newexp < assoc->exp) {
  sctp_RmTimeOut(la, assoc);
  assoc->exp = newexp;
  sctp_AddTimeOut(la, assoc);
 } else {
  assoc->exp = newexp;
 }
}
