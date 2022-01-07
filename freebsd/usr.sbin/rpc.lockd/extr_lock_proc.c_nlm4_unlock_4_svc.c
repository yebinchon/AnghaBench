
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_7__ {int cookie; int alock; } ;
typedef TYPE_2__ nlm4_unlockargs ;
struct TYPE_6__ {int stat; } ;
struct TYPE_8__ {int cookie; TYPE_1__ stat; } ;
typedef TYPE_3__ nlm4_res ;


 int LOCK_V4 ;
 scalar_t__ debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int unlock (int *,int ) ;

nlm4_res *
nlm4_unlock_4_svc(nlm4_unlockargs *arg, struct svc_req *rqstp)
{
 static nlm4_res res;

 if (debug_level)
  log_from_addr("nlm4_unlock", rqstp);

 res.stat.stat = unlock(&arg->alock, LOCK_V4);
 res.cookie = arg->cookie;

 return (&res);
}
