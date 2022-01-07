
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int sat_network_lockout; int sat_network; int minrto; int maxrto; scalar_t__ use_precise_time; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_nets {int rtt; scalar_t__ lan_type; int RTO_measured; int lastsa; int lastsv; int RTO; } ;
struct TYPE_3__ {int (* sctp_rtt_calculated ) (struct sctp_tcb*,struct sctp_nets*,struct timeval*) ;} ;
struct sctp_association {TYPE_1__ cc_functions; } ;
typedef int int32_t ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CLOCK_GRANULARITY ;
 int SCTP_GETPTIME_TIMEVAL (struct timeval*) ;
 int SCTP_GETTIME_TIMEVAL (struct timeval*) ;
 scalar_t__ SCTP_LAN_INTERNET ;
 scalar_t__ SCTP_LAN_LOCAL ;
 scalar_t__ SCTP_LAN_UNKNOWN ;
 int SCTP_LOCAL_LAN_RTT ;
 int SCTP_LOG_INITIAL_RTT ;
 int SCTP_LOG_RTTVAR ;
 int SCTP_RTO_UPPER_BOUND ;
 int SCTP_RTTVAR_LOGGING_ENABLE ;
 int SCTP_RTT_FROM_DATA ;
 int SCTP_RTT_SHIFT ;
 int SCTP_RTT_VAR_SHIFT ;
 int SCTP_SAT_NETWORK_MIN ;
 int rto_logging (struct sctp_nets*,int ) ;
 int sctp_logging_level ;
 int stub1 (struct sctp_tcb*,struct sctp_nets*,struct timeval*) ;
 int timevalsub (struct timeval*,struct timeval*) ;

int
sctp_calculate_rto(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_nets *net,
    struct timeval *old,
    int rtt_from_sack)
{
 struct timeval now;
 uint64_t rtt_us;
 int32_t rtt;
 uint32_t new_rto;
 int first_measure = 0;





 if (stcb->asoc.use_precise_time) {
  (void)SCTP_GETPTIME_TIMEVAL(&now);
 } else {
  (void)SCTP_GETTIME_TIMEVAL(&now);
 }
 if ((old->tv_sec > now.tv_sec) ||
     ((old->tv_sec == now.tv_sec) && (old->tv_sec > now.tv_sec))) {

  return (0);
 }
 timevalsub(&now, old);
 rtt_us = (uint64_t)1000000 * (uint64_t)now.tv_sec + (uint64_t)now.tv_usec;
 if (rtt_us > SCTP_RTO_UPPER_BOUND * 1000) {

  return (0);
 }

 net->rtt = rtt_us;

 rtt = (int32_t)(net->rtt / 1000);
 if ((asoc->cc_functions.sctp_rtt_calculated) && (rtt_from_sack == SCTP_RTT_FROM_DATA)) {




  (*asoc->cc_functions.sctp_rtt_calculated) (stcb, net, &now);
 }




 if ((rtt_from_sack == SCTP_RTT_FROM_DATA) &&
     (net->lan_type == SCTP_LAN_UNKNOWN)) {
  if (net->rtt > SCTP_LOCAL_LAN_RTT) {
   net->lan_type = SCTP_LAN_INTERNET;
  } else {
   net->lan_type = SCTP_LAN_LOCAL;
  }
 }
 if (net->RTO_measured) {
  rtt -= (net->lastsa >> SCTP_RTT_SHIFT);
  net->lastsa += rtt;
  if (rtt < 0) {
   rtt = -rtt;
  }
  rtt -= (net->lastsv >> SCTP_RTT_VAR_SHIFT);
  net->lastsv += rtt;
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_RTTVAR_LOGGING_ENABLE) {
   rto_logging(net, SCTP_LOG_RTTVAR);
  }
 } else {

  net->RTO_measured = 1;
  first_measure = 1;
  net->lastsa = rtt << SCTP_RTT_SHIFT;
  net->lastsv = (rtt / 2) << SCTP_RTT_VAR_SHIFT;
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_RTTVAR_LOGGING_ENABLE) {
   rto_logging(net, SCTP_LOG_INITIAL_RTT);
  }
 }
 if (net->lastsv == 0) {
  net->lastsv = SCTP_CLOCK_GRANULARITY;
 }
 new_rto = (net->lastsa >> SCTP_RTT_SHIFT) + net->lastsv;
 if ((new_rto > SCTP_SAT_NETWORK_MIN) &&
     (stcb->asoc.sat_network_lockout == 0)) {
  stcb->asoc.sat_network = 1;
 } else if ((!first_measure) && stcb->asoc.sat_network) {
  stcb->asoc.sat_network = 0;
  stcb->asoc.sat_network_lockout = 1;
 }

 if (new_rto < stcb->asoc.minrto) {
  new_rto = stcb->asoc.minrto;
 }
 if (new_rto > stcb->asoc.maxrto) {
  new_rto = stcb->asoc.maxrto;
 }
 net->RTO = new_rto;
 return (1);
}
