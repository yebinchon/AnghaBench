
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_usec; } ;
struct sctp_stream_queue_pending {int act_flags; scalar_t__ timetolive; int sinfo_flags; TYPE_1__ ts; } ;





 scalar_t__ PR_SCTP_ENABLED (int ) ;
 int PR_SCTP_POLICY (int ) ;
 int SCTPDBG (int ,char*,int) ;
 int SCTP_DEBUG_USRREQ1 ;
 int SCTP_GETTIME_TIMEVAL (TYPE_1__*) ;
 int SCTP_PR_SCTP_TTL ;
 int timevaladd (TYPE_1__*,struct timeval*) ;

__attribute__((used)) static void
sctp_set_prsctp_policy(struct sctp_stream_queue_pending *sp)
{




 if (PR_SCTP_ENABLED(sp->sinfo_flags)) {
  sp->act_flags |= PR_SCTP_POLICY(sp->sinfo_flags);
 } else if (sp->timetolive > 0) {
  sp->sinfo_flags |= SCTP_PR_SCTP_TTL;
  sp->act_flags |= PR_SCTP_POLICY(sp->sinfo_flags);
 } else {
  return;
 }
 switch (PR_SCTP_POLICY(sp->sinfo_flags)) {
 case 130:




  sp->ts.tv_sec = sp->timetolive;
  sp->ts.tv_usec = 0;
  break;
 case 128:
  {
   struct timeval tv;

   (void)SCTP_GETTIME_TIMEVAL(&sp->ts);
   tv.tv_sec = sp->timetolive / 1000;
   tv.tv_usec = (sp->timetolive * 1000) % 1000000;




   timevaladd(&sp->ts, &tv);
  }
  break;
 case 129:




  sp->ts.tv_sec = sp->timetolive;
  sp->ts.tv_usec = 0;
  break;
 default:
  SCTPDBG(SCTP_DEBUG_USRREQ1,
      "Unknown PR_SCTP policy %u.\n",
      PR_SCTP_POLICY(sp->sinfo_flags));
  break;
 }
}
