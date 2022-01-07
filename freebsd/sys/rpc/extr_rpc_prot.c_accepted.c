
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s2; void* s1; } ;
struct rpc_err {int re_status; TYPE_1__ re_lb; } ;
typedef void* int32_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef enum accept_stat { ____Placeholder_accept_stat } accept_stat ;



 scalar_t__ MSG_ACCEPTED ;



 int RPC_CANTDECODEARGS ;
 int RPC_FAILED ;
 int RPC_PROCUNAVAIL ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int RPC_SYSTEMERROR ;


 int assert (int ) ;

__attribute__((used)) static enum clnt_stat
accepted(enum accept_stat acpt_stat, struct rpc_err *error)
{

 assert(error != ((void*)0));

 switch (acpt_stat) {

 case 130:
  error->re_status = RPC_PROGUNAVAIL;
  return (RPC_PROGUNAVAIL);

 case 131:
  error->re_status = RPC_PROGVERSMISMATCH;
  return (RPC_PROGVERSMISMATCH);

 case 132:
  return (RPC_PROCUNAVAIL);

 case 133:
  return (RPC_CANTDECODEARGS);

 case 128:
  return (RPC_SYSTEMERROR);

 case 129:
  return (RPC_SUCCESS);
 }


 error->re_lb.s1 = (int32_t)MSG_ACCEPTED;
 error->re_lb.s2 = (int32_t)acpt_stat;
 return (RPC_FAILED);
}
