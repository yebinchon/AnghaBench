
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int pid; int msg_seq; } ;
struct lockd_ans {int la_set_getlk_pid; int la_getlk_pid; TYPE_2__ la_msg_ident; void* la_errno; } ;
struct TYPE_4__ {int n_len; int n_bytes; } ;
typedef TYPE_1__ netobj ;


 void* EACCES ;
 void* EAGAIN ;
 void* EDEADLK ;
 void* EFBIG ;
 scalar_t__ EPIPE ;
 void* EROFS ;
 scalar_t__ ESRCH ;
 void* ESTALE ;
 int LOCKD_ANS_VERSION ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int NLM_VERS4 ;
 scalar_t__ d_calls ;
 scalar_t__ errno ;
 int memcpy (TYPE_2__*,int ,int) ;
 scalar_t__ nfslockdans (int ,struct lockd_ans*) ;
 int syslog (int ,char*,...) ;

int
lock_answer(int pid, netobj *netcookie, int result, int *pid_p, int version)
{
 struct lockd_ans ans;

 if (netcookie->n_len != sizeof(ans.la_msg_ident)) {
  if (pid == -1) {
   syslog(LOG_ERR, "inedible nlm cookie");
   return -1;
  }
  ans.la_msg_ident.pid = pid;
  ans.la_msg_ident.msg_seq = -1;
 } else {
  memcpy(&ans.la_msg_ident, netcookie->n_bytes,
      sizeof(ans.la_msg_ident));
 }

 if (d_calls)
  syslog(LOG_DEBUG, "lock answer: pid %lu: %s %d",
      (unsigned long)ans.la_msg_ident.pid,
      version == NLM_VERS4 ? "nlmv4" : "nlmv3",
      result);

 ans.la_set_getlk_pid = 0;
 if (version == NLM_VERS4)
  switch (result) {
  case 136:
   ans.la_errno = 0;
   break;
  default:
   ans.la_errno = EACCES;
   break;
  case 141:
   if (pid_p == ((void*)0))
    ans.la_errno = EAGAIN;
   else {

    ans.la_set_getlk_pid = 1;
    ans.la_getlk_pid = *pid_p;
    ans.la_errno = 0;
   }
   break;
  case 139:
   ans.la_errno = EAGAIN;
   break;
  case 143:
   return -1;

  case 140:
   ans.la_errno = EAGAIN;
   break;
  case 142:
   ans.la_errno = EDEADLK;
   break;
  case 135:
   ans.la_errno = EROFS;
   break;
  case 134:
   ans.la_errno = ESTALE;
   break;
  case 137:
   ans.la_errno = EFBIG;
   break;
  case 138:
   ans.la_errno = EACCES;
   break;
  }
 else
  switch (result) {
  case 128:
   ans.la_errno = 0;
   break;
  default:
   ans.la_errno = EACCES;
   break;
  case 131:
   if (pid_p == ((void*)0))
    ans.la_errno = EAGAIN;
   else {

    ans.la_set_getlk_pid = 1;
    ans.la_getlk_pid = *pid_p;
    ans.la_errno = 0;
   }
   break;
  case 129:
   ans.la_errno = EAGAIN;
   break;
  case 133:
   return -1;

  case 130:
   ans.la_errno = EAGAIN;
   break;
  case 132:
   ans.la_errno = EDEADLK;
   break;
  }

 if (nfslockdans(LOCKD_ANS_VERSION, &ans)) {
  syslog(((errno == EPIPE || errno == ESRCH) ?
   LOG_INFO : LOG_ERR),
   "process %lu: %m", (u_long)ans.la_msg_ident.pid);
  return -1;
 }
 return 0;
}
