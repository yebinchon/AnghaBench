
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct file_lock {int dummy; } ;
struct TYPE_6__ {int n_len; scalar_t__ n_bytes; } ;
struct TYPE_7__ {int l_len; int l_offset; int svid; TYPE_1__ fh; int caller_name; int oh; } ;
struct TYPE_8__ {scalar_t__ reclaim; int block; int state; TYPE_2__ alock; int exclusive; int cookie; } ;
typedef TYPE_3__ nlm4_lockargs ;
typedef int fhandle_t ;
typedef enum nlm_stats { ____Placeholder_nlm_stats } nlm_stats ;
struct TYPE_9__ {scalar_t__ buf; } ;


 int const LOCK_V4 ;
 int LOG_NOTICE ;
 struct file_lock* allocate_file_lock (int *,int *,struct sockaddr*,int ) ;
 int deallocate_file_lock (struct file_lock*) ;
 int debuglog (char*,...) ;
 int do_lock (struct file_lock*) ;
 int errno ;
 int fill_file_lock (struct file_lock*,int *,int ,int ,int ,int ,int ,int ,int const,int ) ;
 scalar_t__ grace_expired ;

 int nlm4_denied_grace_period ;
 int nlm4_denied_nolocks ;

 int nlm_denied_grace_period ;
 int nlm_denied_nolocks ;
 int siglock () ;
 int sigunlock () ;
 int strerror (int ) ;
 TYPE_4__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,int ) ;

enum nlm_stats
getlock(nlm4_lockargs *lckarg, struct svc_req *rqstp, const int flags)
{
 struct file_lock *newfl;
 enum nlm_stats retval;

 debuglog("Entering getlock...\n");

 if (grace_expired == 0 && lckarg->reclaim == 0)
  return (flags & LOCK_V4) ?
      nlm4_denied_grace_period : nlm_denied_grace_period;


 newfl = allocate_file_lock(&lckarg->alock.oh, &lckarg->cookie,
       (struct sockaddr *)svc_getrpccaller(rqstp->rq_xprt)->buf, lckarg->alock.caller_name);
 if (newfl == ((void*)0)) {
  syslog(LOG_NOTICE, "lock allocate failed: %s", strerror(errno));

  return (flags & LOCK_V4) ?
      nlm4_denied_nolocks : nlm_denied_nolocks;
 }

 if (lckarg->alock.fh.n_len != sizeof(fhandle_t)) {
  debuglog("received fhandle size %d, local size %d",
      lckarg->alock.fh.n_len, (int)sizeof(fhandle_t));
 }

 fill_file_lock(newfl, (fhandle_t *)lckarg->alock.fh.n_bytes,
     lckarg->exclusive, lckarg->alock.svid, lckarg->alock.l_offset,
     lckarg->alock.l_len,
     lckarg->state, 0, flags, lckarg->block);






 siglock();
 debuglog("Pointer to new lock is %p\n",newfl);

 retval = do_lock(newfl);

 debuglog("Pointer to new lock is %p\n",newfl);
 sigunlock();

 switch (retval)
  {
  case 128:


   break;
  case 129:


   break;
  default:
   deallocate_file_lock(newfl);
   break;
  }

 debuglog("Exiting getlock...\n");

 return retval;
}
