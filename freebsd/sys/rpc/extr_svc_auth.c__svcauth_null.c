
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int rq_verf; } ;
struct rpc_msg {int dummy; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;


 int AUTH_OK ;
 int _null_auth ;

enum auth_stat
_svcauth_null(struct svc_req *rqst, struct rpc_msg *msg)
{

 rqst->rq_verf = _null_auth;
 return (AUTH_OK);
}
