
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
 int unlock_partialfilelock (struct file_lock*) ;

enum nlm_stats
do_unlock(struct file_lock *fl)
{
 enum partialfilelock_status pfsret;
 enum nlm_stats retval;

 debuglog("Entering do_unlock...\n");
 pfsret = unlock_partialfilelock(fl);

 switch (pfsret) {
 case 134:
  debuglog("PFL unlock granted");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 130:
 case 133:
  debuglog("PFL_NFS unlock denied");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied : nlm_denied;
  break;
 case 129:
 case 132:
  debuglog("PFL_NFS no lock found\n");
  retval = (fl->flags & LOCK_V4) ? nlm4_granted : nlm_granted;
  break;
 case 128:
 case 131:
  debuglog("PFL unlock resource failure");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_denied_nolocks : nlm_denied_nolocks;
  break;
 default:
  debuglog("PFL unlock *FAILED*");
  dump_filelock(fl);
  retval = (fl->flags & LOCK_V4) ? nlm4_failed : nlm_denied;
  break;
 }

 debuglog("Exiting do_unlock...\n");

 return retval;
}
