
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_5__ {scalar_t__ minor_status; scalar_t__ major_status; int status_string; int message_context; } ;
typedef TYPE_1__ display_status_res ;
struct TYPE_6__ {int mech_type; int status_type; int status_value; int message_context; } ;
typedef TYPE_2__ display_status_args ;
typedef int bool_t ;


 int TRUE ;
 scalar_t__ gss_display_status (scalar_t__*,int ,int ,int ,int *,int *) ;
 int gssd_verbose_out (char*,unsigned int,int) ;

bool_t
gssd_display_status_1_svc(display_status_args *argp, display_status_res *result, struct svc_req *rqstp)
{

 result->message_context = argp->message_context;
 result->major_status = gss_display_status(&result->minor_status,
     argp->status_value, argp->status_type, argp->mech_type,
     &result->message_context, &result->status_string);
 gssd_verbose_out("gssd_display_status: done major=0x%x minor=%d\n",
     (unsigned int)result->major_status, (int)result->minor_status);

 return (TRUE);
}
