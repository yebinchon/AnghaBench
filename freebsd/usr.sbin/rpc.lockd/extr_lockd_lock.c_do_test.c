
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
 int nlm4_denied ;
 int nlm4_denied_nolocks ;
 int nlm4_failed ;
 int nlm4_granted ;
 int nlm_denied ;
 int nlm_denied_nolocks ;
 int nlm_granted ;
 int test_partialfilelock (struct file_lock*,struct file_lock**) ;

enum nlm_stats
do_test(struct file_lock *fl, struct file_lock **conflicting_fl)
{
 enum partialfilelock_status pfsret;
 enum nlm_stats retval;

 debuglog("Entering do_test...\n");

 pfsret = test_partialfilelock(fl,conflicting_fl);

 switch (pfsret) {
 case 133:
  debuglog("PFL test lock granted\n");
  dump_filelock(fl);
  dump_filelock(*conflicting_fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 132:
  debuglog("PFL test lock granted--duplicate id detected\n");
  dump_filelock(fl);
  dump_filelock(*conflicting_fl);
  debuglog("Clearing conflicting_fl for call semantics\n");
  *conflicting_fl = ((void*)0);
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 129:
 case 131:
  debuglog("PFL test lock denied\n");
  dump_filelock(fl);
  dump_filelock(*conflicting_fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied : nlm_denied;
  break;
 case 128:
 case 130:
  debuglog("PFL test lock resource fail\n");
  dump_filelock(fl);
  dump_filelock(*conflicting_fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied_nolocks : nlm_denied_nolocks;
  break;
 default:
  debuglog("PFL test lock *FAILED*\n");
  dump_filelock(fl);
  dump_filelock(*conflicting_fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_failed : nlm_denied;
  break;
 }

 debuglog("Exiting do_test...\n");

 return retval;
}
