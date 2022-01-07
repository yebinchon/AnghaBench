
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int blocking; int client_name; } ;
typedef enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;
typedef enum hwlock_status { ____Placeholder_hwlock_status } hwlock_status ;
 int PFL_DENIED ;
 int PFL_GRANTED ;
 int PFL_GRANTED_DUPLICATE ;
 int PFL_HWDENIED ;
 int PFL_HWRESERR ;
 int PFL_NFSBLOCKED ;
 int PFL_NFSDENIED ;
 int PFL_NFSDENIED_NOLOCK ;
 int PFL_NFSRESERR ;
 int add_blockingfilelock (struct file_lock*) ;
 int debuglog (char*,...) ;
 int delete_nfslock (struct file_lock*) ;
 int dump_filelock (struct file_lock*) ;
 int lock_hwlock (struct file_lock*) ;
 int lock_nfslock (struct file_lock*) ;
 int monitor_lock_host (int ) ;

enum partialfilelock_status
lock_partialfilelock(struct file_lock *fl)
{
 enum partialfilelock_status retval;
 enum nfslock_status lnlstatus;
 enum hwlock_status hwstatus;

 debuglog("Entering lock_partialfilelock\n");

 retval = PFL_DENIED;






 lnlstatus = lock_nfslock(fl);

 switch (lnlstatus) {
 case 130:
 case 129:




  hwstatus = lock_hwlock(fl);

  switch (hwstatus) {
  case 134:
  case 133:
   debuglog("HW GRANTED\n");





   if (lnlstatus == 129) {
    retval = PFL_GRANTED_DUPLICATE;
   } else {
    retval = PFL_GRANTED;
   }
   monitor_lock_host(fl->client_name);
   break;
  case 132:
   debuglog("HW RESERR\n");
   retval = PFL_HWRESERR;
   break;
  case 135:
   debuglog("HW DENIED\n");
   retval = PFL_HWDENIED;
   break;
  default:
   debuglog("Unmatched hwstatus %d\n",hwstatus);
   break;
  }

  if (retval != PFL_GRANTED &&
      retval != PFL_GRANTED_DUPLICATE) {

   debuglog("Deleting trial NFS lock\n");
   delete_nfslock(fl);
  }
  break;
 case 131:
  retval = PFL_NFSDENIED;
  break;
 case 128:
  retval = PFL_NFSRESERR;
  break;
 default:
  debuglog("Unmatched lnlstatus %d\n");
  retval = PFL_NFSDENIED_NOLOCK;
  break;
 }







 if (retval == PFL_NFSDENIED || retval == PFL_HWDENIED) {

  if (fl->blocking == 1) {
   if (retval == PFL_NFSDENIED) {

    debuglog("BLOCKING LOCK RECEIVED\n");
    retval = PFL_NFSBLOCKED;
    add_blockingfilelock(fl);
    dump_filelock(fl);
   } else {

    debuglog("BLOCKING LOCK DENIED IN HARDWARE\n");
    dump_filelock(fl);
   }
  } else {

   debuglog("Lock denied.  Non-blocking failure\n");
   dump_filelock(fl);
  }
 }

 debuglog("Exiting lock_partialfilelock\n");

 return retval;
}
