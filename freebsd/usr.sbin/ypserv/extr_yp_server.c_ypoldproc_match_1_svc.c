
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* valdat_val; scalar_t__ valdat_len; } ;
struct TYPE_14__ {int stat; TYPE_2__ val; } ;
struct TYPE_11__ {TYPE_8__ yp_resp_valtype; } ;
struct TYPE_12__ {TYPE_3__ ypresponse_u; int yp_resptype; } ;
typedef TYPE_4__ ypresponse ;
typedef int ypresp_val ;
struct TYPE_9__ {int yp_req_keytype; } ;
struct TYPE_13__ {scalar_t__ yp_reqtype; TYPE_1__ yprequest_u; } ;
typedef TYPE_5__ yprequest ;
struct svc_req {int dummy; } ;


 scalar_t__ YPREQ_KEY ;
 int YPRESP_VAL ;
 int YP_BADARGS ;
 int bcopy (int *,TYPE_8__*,int) ;
 int * ypproc_match_2_svc (int *,struct svc_req*) ;

ypresponse *
ypoldproc_match_1_svc(yprequest *argp, struct svc_req *rqstp)
{
 static ypresponse result;
 ypresp_val *v2_result;

 result.yp_resptype = YPRESP_VAL;
 result.ypresponse_u.yp_resp_valtype.val.valdat_val = "";
 result.ypresponse_u.yp_resp_valtype.val.valdat_len = 0;

 if (argp->yp_reqtype != YPREQ_KEY) {
  result.ypresponse_u.yp_resp_valtype.stat = YP_BADARGS;
  return(&result);
 }

 v2_result = ypproc_match_2_svc(&argp->yprequest_u.yp_req_keytype,rqstp);
 if (v2_result == ((void*)0))
  return(((void*)0));

 bcopy(v2_result, &result.ypresponse_u.yp_resp_valtype,
       sizeof(ypresp_val));

 return (&result);
}
