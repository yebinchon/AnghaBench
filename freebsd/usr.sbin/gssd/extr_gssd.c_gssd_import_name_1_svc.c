
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_5__ {int output_name; scalar_t__ major_status; scalar_t__ minor_status; } ;
typedef TYPE_1__ import_name_res ;
struct TYPE_6__ {int input_name_type; int input_name_buffer; } ;
typedef TYPE_2__ import_name_args ;
typedef int gss_name_t ;
typedef int bool_t ;


 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 scalar_t__ gss_import_name (scalar_t__*,int *,int ,int *) ;
 int gssd_make_resource (int ) ;
 int gssd_verbose_out (char*,unsigned int,int) ;

bool_t
gssd_import_name_1_svc(import_name_args *argp, import_name_res *result, struct svc_req *rqstp)
{
 gss_name_t name;

 result->major_status = gss_import_name(&result->minor_status,
     &argp->input_name_buffer, argp->input_name_type, &name);
 gssd_verbose_out("gssd_import_name: done major=0x%x minor=%d\n",
     (unsigned int)result->major_status, (int)result->minor_status);

 if (result->major_status == GSS_S_COMPLETE)
  result->output_name = gssd_make_resource(name);
 else
  result->output_name = 0;

 return (TRUE);
}
