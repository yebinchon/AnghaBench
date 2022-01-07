
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cgid; int cuid; int gid; int uid; int mode; scalar_t__ key; } ;
struct TYPE_3__ {int shm_nattch; int shm_cpid; int shm_lpid; int shm_segsz; TYPE_2__ shm_perm; int shm_ctime; int shm_dtime; int shm_atime; } ;
struct shmid_kernel {TYPE_1__ u; } ;


 int BIGGEST ;
 int CREATOR ;
 int IXSEQ_TO_IPCID (int,TYPE_2__) ;
 int OUTSTANDING ;
 int PID ;
 int TIME ;
 int cvt_time (int ,char*) ;
 char* fmt_perm (int ) ;
 char* group_from_gid (int ,int ) ;
 int printf (char*,...) ;
 char* user_from_uid (int ,int ) ;

void
print_kshmptr(int i, int option, struct shmid_kernel *kshmptr)
{
 char atime_buf[100], dtime_buf[100], ctime_buf[100];

 cvt_time(kshmptr->u.shm_atime, atime_buf);
 cvt_time(kshmptr->u.shm_dtime, dtime_buf);
 cvt_time(kshmptr->u.shm_ctime, ctime_buf);

 printf("m %12d %12d %s %-8s %-8s",
     IXSEQ_TO_IPCID(i, kshmptr->u.shm_perm),
     (int)kshmptr->u.shm_perm.key,
     fmt_perm(kshmptr->u.shm_perm.mode),
     user_from_uid(kshmptr->u.shm_perm.uid, 0),
     group_from_gid(kshmptr->u.shm_perm.gid, 0));

 if (option & CREATOR)
  printf(" %-8s %-8s",
      user_from_uid(kshmptr->u.shm_perm.cuid, 0),
      group_from_gid(kshmptr->u.shm_perm.cgid, 0));

 if (option & OUTSTANDING)
  printf(" %12d",
      kshmptr->u.shm_nattch);

 if (option & BIGGEST)
  printf(" %12zu",
      kshmptr->u.shm_segsz);

 if (option & PID)
  printf(" %12d %12d",
      kshmptr->u.shm_cpid,
      kshmptr->u.shm_lpid);

 if (option & TIME)
  printf(" %s %s %s",
      atime_buf,
      dtime_buf,
      ctime_buf);

 printf("\n");
}
