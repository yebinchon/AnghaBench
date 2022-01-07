
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int high; int low; } ;
struct TYPE_14__ {TYPE_6__ ar_vers; int ar_stat; } ;
struct TYPE_10__ {int high; int low; } ;
struct TYPE_11__ {int rj_why; TYPE_3__ rj_vers; int rj_stat; } ;
struct TYPE_9__ {int rp_stat; } ;
struct rpc_msg {TYPE_7__ acpted_rply; TYPE_4__ rjcted_rply; TYPE_2__ rm_reply; } ;
struct TYPE_12__ {int high; int low; } ;
struct TYPE_8__ {int s1; } ;
struct rpc_err {int re_status; TYPE_5__ re_vers; int re_why; TYPE_1__ re_lb; } ;
typedef int int32_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
 int SUCCESS ;
 int accepted (int ,struct rpc_err*) ;
 int assert (int ) ;
 int rejected (int ,struct rpc_err*) ;

enum clnt_stat
_seterr_reply(struct rpc_msg *msg, struct rpc_err *error)
{
 enum clnt_stat stat;

 assert(msg != ((void*)0));
 assert(error != ((void*)0));


 switch (msg->rm_reply.rp_stat) {

 case 147:
  if (msg->acpted_rply.ar_stat == SUCCESS) {
   stat = 133;
   return (stat);
  }
  stat = accepted(msg->acpted_rply.ar_stat, error);
  break;

 case 146:
  stat = rejected(msg->rjcted_rply.rj_stat, error);
  break;

 default:
  stat = 139;
  error->re_lb.s1 = (int32_t)(msg->rm_reply.rp_stat);
  break;
 }
 error->re_status = stat;

 switch (stat) {

 case 128:
  error->re_vers.low = msg->rjcted_rply.rj_vers.low;
  error->re_vers.high = msg->rjcted_rply.rj_vers.high;
  break;

 case 145:
  error->re_why = msg->rjcted_rply.rj_why;
  break;

 case 134:
  error->re_vers.low = msg->acpted_rply.ar_vers.low;
  error->re_vers.high = msg->acpted_rply.ar_vers.high;
  break;

 case 139:
 case 133:
 case 136:
 case 138:
 case 129:
 case 130:
 case 132:
 case 144:
 case 137:
 case 135:
 case 131:
 case 141:
 case 140:
 case 143:
 case 142:
 default:
  break;
 }

 return (stat);
}
