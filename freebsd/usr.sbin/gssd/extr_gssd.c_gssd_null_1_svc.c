
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int bool_t ;


 int TRUE ;
 int gssd_verbose_out (char*) ;

bool_t
gssd_null_1_svc(void *argp, void *result, struct svc_req *rqstp)
{

 gssd_verbose_out("gssd_null: done\n");
 return (TRUE);
}
