
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct file_lock {int client_name; } const file_lock ;
typedef enum partialfilelock_status { ____Placeholder_partialfilelock_status } partialfilelock_status ;
typedef enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;
typedef enum hwlock_status { ____Placeholder_hwlock_status } hwlock_status ;




 int HW_GRANTED_DUPLICATE ;


 int NFS_RESERR ;
 int PFL_DENIED ;
 int PFL_GRANTED ;
 int PFL_HWRESERR ;
 int PFL_NFSRESERR ;
 int deallocate_file_lock (struct file_lock const*) ;
 int debuglog (char*,...) ;
 int dump_filelock (struct file_lock const*) ;
 int lock_hwlock (struct file_lock const*) ;
 int monitor_lock_host (int ) ;
 int retry_blockingfilelocklist () ;
 int unlock_hwlock (struct file_lock const*) ;
 int unlock_nfslock (struct file_lock const*,struct file_lock const**,struct file_lock const**,struct file_lock const**) ;
 int unmonitor_lock_host (int ) ;

enum partialfilelock_status
unlock_partialfilelock(const struct file_lock *fl)
{
 struct file_lock *lfl,*rfl,*releasedfl,*selffl;
 enum partialfilelock_status retval;
 enum nfslock_status unlstatus;
 enum hwlock_status unlhwstatus, lhwstatus;

 debuglog("Entering unlock_partialfilelock\n");

 selffl = ((void*)0);
 lfl = ((void*)0);
 rfl = ((void*)0);
 releasedfl = ((void*)0);
 retval = PFL_DENIED;
 do {
  debuglog("Value of releasedfl: %p\n",releasedfl);

  unlstatus = unlock_nfslock(fl, &releasedfl, &lfl, &rfl);
  debuglog("Value of releasedfl: %p\n",releasedfl);



  if (lfl != ((void*)0)) {
   lhwstatus = lock_hwlock(lfl);
   if (lhwstatus != 130 &&
       lhwstatus != HW_GRANTED_DUPLICATE) {
    debuglog("HW duplicate lock failure for left split\n");
   }
   monitor_lock_host(lfl->client_name);
  }

  if (rfl != ((void*)0)) {
   lhwstatus = lock_hwlock(rfl);
   if (lhwstatus != 130 &&
       lhwstatus != HW_GRANTED_DUPLICATE) {
    debuglog("HW duplicate lock failure for right split\n");
   }
   monitor_lock_host(rfl->client_name);
  }

  switch (unlstatus) {
  case 128:

   debuglog("NFS unlock granted.  Attempting hardware unlock\n");


   unlhwstatus = unlock_hwlock(fl);
   debuglog("HW unlock returned with code %d\n",unlhwstatus);

   switch (unlhwstatus) {
   case 130:
    debuglog("HW unlock granted\n");
    unmonitor_lock_host(releasedfl->client_name);
    retval = PFL_GRANTED;
    break;
   case 131:

    debuglog("HW unlock denied no lock\n");
    retval = PFL_HWRESERR;

    unlstatus = NFS_RESERR;
    break;
   default:
    debuglog("HW unlock failed\n");
    retval = PFL_HWRESERR;

    unlstatus = NFS_RESERR;
    break;
   }

   debuglog("Exiting with status retval: %d\n",retval);

   retry_blockingfilelocklist();
   break;
  case 129:
   retval = PFL_GRANTED;
   debuglog("All locks cleaned out\n");
   break;
  default:
   retval = PFL_NFSRESERR;
   debuglog("NFS unlock failure\n");
   dump_filelock(fl);
   break;
  }

  if (releasedfl != ((void*)0)) {
   if (fl == releasedfl) {





    debuglog("Attempt to unlock self\n");
    selffl = releasedfl;
   } else {







    deallocate_file_lock(releasedfl);
    releasedfl = ((void*)0);
   }
  }

 } while (unlstatus == 128);

 if (selffl != ((void*)0)) {




  debuglog("WARNING!  Destroying incoming lock pointer\n");
  deallocate_file_lock(selffl);
 }

 debuglog("Exiting unlock_partialfilelock\n");

 return retval;
}
