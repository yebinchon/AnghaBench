
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transid; int status; } ;
typedef TYPE_1__ yppushresp_xfr ;
struct svc_req {int dummy; } ;


 int yppush_show_status (int ,int ) ;

void *
yppushproc_xfrresp_1_svc(yppushresp_xfr *argp, struct svc_req *rqstp)
{
 static char * result;
 yppush_show_status(argp->status, argp->transid);
 return((void *) &result);
}
