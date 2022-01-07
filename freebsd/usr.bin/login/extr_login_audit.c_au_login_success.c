
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef int token_t ;
typedef int pid_t ;
typedef int gid_t ;
struct TYPE_4__ {int ai_mask; int ai_termid; int ai_asid; int ai_auid; } ;
typedef TYPE_1__ auditinfo_t ;
typedef int au_mask_t ;
typedef int au_cond ;
struct TYPE_5__ {int pw_name; int pw_gid; int pw_uid; } ;


 int AUC_NOAUDIT ;
 int AUE_login ;
 int A_GETCOND ;
 scalar_t__ ENOSYS ;
 int au_close (int,int,int ) ;
 int au_open () ;
 int * au_to_return32 (int ,int ) ;
 int * au_to_subject32 (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int au_user_mask (int ,int *) ;
 int au_write (int,int *) ;
 scalar_t__ auditon (int ,int*,int) ;
 int bcopy (int *,int *,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int getegid () ;
 int geteuid () ;
 int getpid () ;
 TYPE_3__* pwd ;
 scalar_t__ setaudit (TYPE_1__*) ;
 int tid ;

void
au_login_success(void)
{
 token_t *tok;
 int aufd;
 au_mask_t aumask;
 auditinfo_t auinfo;
 uid_t uid = pwd->pw_uid;
 gid_t gid = pwd->pw_gid;
 pid_t pid = getpid();
 int au_cond;


  if (auditon(A_GETCOND, &au_cond, sizeof(au_cond)) < 0) {
  if (errno == ENOSYS)
   return;
  errx(1, "could not determine audit condition");
 }
 if (au_cond == AUC_NOAUDIT)
  return;


 if (au_user_mask(pwd->pw_name, &aumask) == -1)
  errx(1, "could not calculate audit mask");


 auinfo.ai_auid = uid;
 auinfo.ai_asid = pid;
 bcopy(&tid, &auinfo.ai_termid, sizeof(auinfo.ai_termid));
 bcopy(&aumask, &auinfo.ai_mask, sizeof(auinfo.ai_mask));
 if (setaudit(&auinfo) != 0)
  err(1, "setaudit failed");

 if ((aufd = au_open()) == -1)
  errx(1, "audit error: au_open() failed");

 if ((tok = au_to_subject32(uid, geteuid(), getegid(), uid, gid, pid,
     pid, &tid)) == ((void*)0))
  errx(1, "audit error: au_to_subject32() failed");
 au_write(aufd, tok);

 if ((tok = au_to_return32(0, 0)) == ((void*)0))
  errx(1, "audit error: au_to_return32() failed");
 au_write(aufd, tok);

 if (au_close(aufd, 1, AUE_login) == -1)
  errx(1, "audit record was not committed.");
}
