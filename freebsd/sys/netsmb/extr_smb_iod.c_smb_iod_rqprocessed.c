
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rq {int sr_lerror; int sr_state; int sr_rpgen; } ;


 int SMBRQ_NOTIFIED ;
 int SMBRQ_SLOCK (struct smb_rq*) ;
 int SMBRQ_SUNLOCK (struct smb_rq*) ;
 int wakeup (int *) ;

__attribute__((used)) static __inline void
smb_iod_rqprocessed(struct smb_rq *rqp, int error)
{
 SMBRQ_SLOCK(rqp);
 rqp->sr_lerror = error;
 rqp->sr_rpgen++;
 rqp->sr_state = SMBRQ_NOTIFIED;
 wakeup(&rqp->sr_state);
 SMBRQ_SUNLOCK(rqp);
}
