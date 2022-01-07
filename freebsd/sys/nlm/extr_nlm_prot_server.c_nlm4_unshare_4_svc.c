
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_4__ {int stat; } ;
typedef TYPE_1__ nlm4_shareres ;
typedef int nlm4_shareargs ;
typedef int bool_t ;


 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int nlm4_denied ;

bool_t
nlm4_unshare_4_svc(nlm4_shareargs *argp, nlm4_shareres *result, struct svc_req *rqstp)
{

 memset(result, 0, sizeof(*result));
 result->stat = nlm4_denied;
 return (TRUE);
}
