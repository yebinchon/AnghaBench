
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cgid; int cuid; int gid; int uid; int mode; scalar_t__ key; } ;
struct TYPE_3__ {int msg_lspid; int msg_lrpid; int msg_qbytes; int msg_qnum; int msg_cbytes; TYPE_2__ msg_perm; int msg_ctime; int msg_rtime; int msg_stime; } ;
struct msqid_kernel {TYPE_1__ u; } ;


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
print_kmsqptr(int i, int option, struct msqid_kernel *kmsqptr)
{
 char stime_buf[100], rtime_buf[100], ctime_buf[100];

 cvt_time(kmsqptr->u.msg_stime, stime_buf);
 cvt_time(kmsqptr->u.msg_rtime, rtime_buf);
 cvt_time(kmsqptr->u.msg_ctime, ctime_buf);

 printf("q %12d %12d %s %-8s %-8s",
     IXSEQ_TO_IPCID(i, kmsqptr->u.msg_perm),
     (int)kmsqptr->u.msg_perm.key,
     fmt_perm(kmsqptr->u.msg_perm.mode),
     user_from_uid(kmsqptr->u.msg_perm.uid, 0),
     group_from_gid(kmsqptr->u.msg_perm.gid, 0));

 if (option & CREATOR)
  printf(" %-8s %-8s",
      user_from_uid(kmsqptr->u.msg_perm.cuid, 0),
      group_from_gid(kmsqptr->u.msg_perm.cgid, 0));

 if (option & OUTSTANDING)
  printf(" %12lu %12lu",
      kmsqptr->u.msg_cbytes,
      kmsqptr->u.msg_qnum);

 if (option & BIGGEST)
  printf(" %20lu", kmsqptr->u.msg_qbytes);

 if (option & PID)
  printf(" %12d %12d",
      kmsqptr->u.msg_lspid,
      kmsqptr->u.msg_lrpid);

 if (option & TIME)
  printf(" %s %s %s",
      stime_buf,
      rtime_buf,
      ctime_buf);

 printf("\n");
}
