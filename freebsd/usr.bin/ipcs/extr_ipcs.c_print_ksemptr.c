
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cgid; int cuid; int gid; int uid; int mode; scalar_t__ key; } ;
struct TYPE_3__ {int sem_nsems; TYPE_2__ sem_perm; int sem_ctime; int sem_otime; } ;
struct semid_kernel {TYPE_1__ u; } ;


 int BIGGEST ;
 int CREATOR ;
 int IXSEQ_TO_IPCID (int,TYPE_2__) ;
 int TIME ;
 int cvt_time (int ,char*) ;
 char* fmt_perm (int ) ;
 char* group_from_gid (int ,int ) ;
 int printf (char*,...) ;
 char* user_from_uid (int ,int ) ;

void
print_ksemptr(int i, int option, struct semid_kernel *ksemaptr)
{
 char ctime_buf[100], otime_buf[100];

 cvt_time(ksemaptr->u.sem_otime, otime_buf);
 cvt_time(ksemaptr->u.sem_ctime, ctime_buf);

 printf("s %12d %12d %s %-8s %-8s",
     IXSEQ_TO_IPCID(i, ksemaptr->u.sem_perm),
     (int)ksemaptr->u.sem_perm.key,
     fmt_perm(ksemaptr->u.sem_perm.mode),
     user_from_uid(ksemaptr->u.sem_perm.uid, 0),
     group_from_gid(ksemaptr->u.sem_perm.gid, 0));

 if (option & CREATOR)
  printf(" %-8s %-8s",
      user_from_uid(ksemaptr->u.sem_perm.cuid, 0),
      group_from_gid(ksemaptr->u.sem_perm.cgid, 0));

 if (option & BIGGEST)
  printf(" %12d",
      ksemaptr->u.sem_nsems);

 if (option & TIME)
  printf(" %s %s",
      otime_buf,
      ctime_buf);

 printf("\n");
}
