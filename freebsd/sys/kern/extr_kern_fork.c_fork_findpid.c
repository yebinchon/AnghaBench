
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int KASSERT (int,char*) ;
 int RFHIGHPID ;
 scalar_t__ __predict_false (int) ;
 int arc4random () ;
 int bit_ffc_at (int *,int,int,int*) ;
 int bit_set (int *,int) ;
 scalar_t__ bit_test (int *,int) ;
 int lastpid ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pid_max ;
 int proc_id_grpidmap ;
 int proc_id_pidmap ;
 int proc_id_reapmap ;
 int proc_id_sessidmap ;
 int procid_lock ;
 int randompid ;

__attribute__((used)) static int
fork_findpid(int flags)
{
 pid_t result;
 int trypid, random;




 random = 0;
 if (__predict_false(randompid))
  random = arc4random() % randompid;

 mtx_lock(&procid_lock);

 trypid = lastpid + 1;
 if (flags & RFHIGHPID) {
  if (trypid < 10)
   trypid = 10;
 } else {
  trypid += random;
 }
retry:
 if (trypid >= pid_max)
  trypid = 2;

 bit_ffc_at(&proc_id_pidmap, trypid, pid_max, &result);
 if (result == -1) {
  KASSERT(trypid != 2, ("unexpectedly ran out of IDs"));
  trypid = 2;
  goto retry;
 }
 if (bit_test(&proc_id_grpidmap, result) ||
     bit_test(&proc_id_sessidmap, result) ||
     bit_test(&proc_id_reapmap, result)) {
  trypid = result + 1;
  goto retry;
 }




 if ((flags & RFHIGHPID) == 0)
  lastpid = result;

 bit_set(&proc_id_pidmap, result);
 mtx_unlock(&procid_lock);

 return (result);
}
