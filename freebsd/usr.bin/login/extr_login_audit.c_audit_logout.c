
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
typedef int token_t ;
typedef int pid_t ;
typedef int gid_t ;
struct TYPE_2__ {int pw_gid; int pw_uid; } ;


 int AUC_NOAUDIT ;
 int AUE_logout ;
 int A_GETCOND ;
 scalar_t__ ENOSYS ;
 int au_close (int,int,int ) ;
 int au_open () ;
 int * au_to_return32 (int ,int ) ;
 int * au_to_subject32 (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int au_write (int,int *) ;
 scalar_t__ auditon (int ,int*,int) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int getegid () ;
 int geteuid () ;
 int getpid () ;
 TYPE_1__* pwd ;
 int tid ;

void
audit_logout(void)
{
 token_t *tok;
 int aufd;
 uid_t uid = pwd->pw_uid;
 gid_t gid = pwd->pw_gid;
 pid_t pid = getpid();
 int au_cond;


  if (auditon(A_GETCOND, &au_cond, sizeof(int)) < 0) {
  if (errno == ENOSYS)
   return;
  errx(1, "could not determine audit condition");
 }
 if (au_cond == AUC_NOAUDIT)
  return;

 if ((aufd = au_open()) == -1)
  errx(1, "audit error: au_open() failed");


 if ((tok = au_to_subject32(uid, geteuid(), getegid(), uid, gid, pid,
     pid, &tid)) == ((void*)0))
  errx(1, "audit error: au_to_subject32() failed");
 au_write(aufd, tok);

 if ((tok = au_to_return32(0, 0)) == ((void*)0))
  errx(1, "audit error: au_to_return32() failed");
 au_write(aufd, tok);

 if (au_close(aufd, 1, AUE_logout) == -1)
  errx(1, "audit record was not committed.");
}
