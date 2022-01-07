
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ total_flight; } ;
struct sctp_tcb {int sctp_socket; TYPE_1__ asoc; } ;


 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 scalar_t__ SCTP_SB_LIMIT_SND (int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int sctp_min_residual ;
 int sctp_min_split_point ;

__attribute__((used)) static uint32_t
sctp_can_we_split_this(struct sctp_tcb *stcb, uint32_t length,
    uint32_t space_left, uint32_t frag_point, int eeor_on)
{




 if (eeor_on) {





  if (space_left >= length) {





   if (stcb->asoc.total_flight == 0) {




    return (length);
   }
   return (0);

  } else {

   return (space_left);
  }
 }





 if (SCTP_SB_LIMIT_SND(stcb->sctp_socket) < frag_point) {
  return (length);
 }
 if ((length <= space_left) ||
     ((length - space_left) < SCTP_BASE_SYSCTL(sctp_min_residual))) {

  return (0);
 }




 if (space_left >= min(SCTP_BASE_SYSCTL(sctp_min_split_point), frag_point)) {

  return (min(space_left, frag_point));
 }

 return (0);
}
