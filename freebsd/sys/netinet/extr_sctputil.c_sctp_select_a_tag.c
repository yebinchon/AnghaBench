
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct timeval {int dummy; } ;
struct sctp_inpcb {int sctp_ep; } ;


 int SCTP_GETTIME_TIMEVAL (struct timeval*) ;
 scalar_t__ sctp_is_vtag_good (scalar_t__,int ,int ,struct timeval*) ;
 scalar_t__ sctp_select_initial_TSN (int *) ;

uint32_t
sctp_select_a_tag(struct sctp_inpcb *inp, uint16_t lport, uint16_t rport, int check)
{
 uint32_t x;
 struct timeval now;

 if (check) {
  (void)SCTP_GETTIME_TIMEVAL(&now);
 }
 for (;;) {
  x = sctp_select_initial_TSN(&inp->sctp_ep);
  if (x == 0) {

   continue;
  }
  if (!check || sctp_is_vtag_good(x, lport, rport, &now)) {
   break;
  }
 }
 return (x);
}
