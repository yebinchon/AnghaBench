
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef int res1 ;
struct TYPE_6__ {int alock; int cookie; } ;
typedef TYPE_1__ nlm_unlockargs ;
typedef int nlm_res ;
struct TYPE_7__ {int alock; int cookie; } ;
typedef TYPE_2__ nlm4_unlockargs ;
typedef int nlm4_res ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CLIENT ;


 scalar_t__ NLM_VERS4 ;
 int RPC_SUCCESS ;
 int memset (int *,int ,int) ;
 int nlm4_unlock_4 (TYPE_2__*,int *,int *,struct rpc_callextra*,struct timeval) ;
 int nlm_convert_to_nlm4_res (int *,int *) ;
 int nlm_convert_to_nlm_lock (int *,int *) ;
 int nlm_unlock_1 (TYPE_1__*,int *,int *,struct rpc_callextra*,struct timeval) ;

__attribute__((used)) static enum clnt_stat
nlm_unlock_rpc(rpcvers_t vers, nlm4_unlockargs *args, nlm4_res *res, CLIENT *client,
    struct rpc_callextra *ext, struct timeval timo)
{
 if (vers == NLM_VERS4) {
  return nlm4_unlock_4(args, res, client, ext, timo);
 } else {
  nlm_unlockargs args1;
  nlm_res res1;
  enum clnt_stat stat;

  args1.cookie = args->cookie;
  nlm_convert_to_nlm_lock(&args1.alock, &args->alock);
  memset(&res1, 0, sizeof(res1));

  stat = nlm_unlock_1(&args1, &res1, client, ext, timo);

  if (stat == RPC_SUCCESS) {
   nlm_convert_to_nlm4_res(res, &res1);
  }

  return (stat);
 }
}
