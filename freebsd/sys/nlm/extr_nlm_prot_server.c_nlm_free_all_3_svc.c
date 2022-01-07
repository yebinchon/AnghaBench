
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm4_notify {int state; int name; } ;
struct TYPE_3__ {int state; int name; } ;
typedef TYPE_1__ nlm_notify ;
typedef int bool_t ;


 int nlm4_free_all_4_svc (struct nlm4_notify*,void*,struct svc_req*) ;

bool_t
nlm_free_all_3_svc(nlm_notify *argp, void *result, struct svc_req *rqstp)
{
 struct nlm4_notify args4;

 args4.name = argp->name;
 args4.state = argp->state;

 return (nlm4_free_all_4_svc(&args4, result, rqstp));
}
