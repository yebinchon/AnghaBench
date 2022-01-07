
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int flags; } ;
typedef enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef enum nlm_stats { ____Placeholder_nlm_stats } nlm_stats ;


 int LOCK_V4 ;
 int debuglog (char*) ;
 int dump_filelock (struct file_lock*) ;
 int lock_partialfilelock (struct file_lock*) ;
 int nlm4_blocked ;
 int nlm4_denied ;
 int nlm4_denied_nolocks ;
 int nlm4_failed ;
 int nlm4_granted ;
 int nlm_blocked ;
 int nlm_denied ;
 int nlm_denied_nolocks ;
 int nlm_granted ;

enum nlm_stats
do_lock(struct file_lock *fl)
{
 enum partialfilelock_status pfsret;
 enum nlm_stats retval;

 debuglog("Entering do_lock...\n");

 pfsret = lock_partialfilelock(fl);

 switch (pfsret) {
 case 135:
  debuglog("PFL lock granted");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 134:
  debuglog("PFL lock granted--duplicate id detected");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 129:
 case 132:
  debuglog("PFL_NFS lock denied");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied : nlm_denied;
  break;
 case 130:
 case 133:
  debuglog("PFL_NFS blocking lock denied.  Queued.\n");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_blocked : nlm_blocked;
  break;
 case 128:
 case 131:
  debuglog("PFL lock resource alocation fail\n");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied_nolocks : nlm_denied_nolocks;
  break;
 default:
  debuglog("PFL lock *FAILED*");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_failed : nlm_denied;
  break;
 }

 debuglog("Exiting do_lock...\n");

 return retval;
}
