
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xucred {int cr_ngroups; int * cr_groups; int cr_uid; } ;
struct TYPE_8__ {TYPE_1__* ah_ops; } ;
struct TYPE_7__ {TYPE_3__* cl_auth; } ;
struct TYPE_6__ {int (* ah_destroy ) (TYPE_3__*) ;} ;
typedef TYPE_2__ CLIENT ;


 int NGRPS ;
 TYPE_3__* authunix_create (int ,int ,int ,int,int *) ;
 int hostname ;
 int stub1 (TYPE_3__*) ;

void
set_auth(CLIENT *cl, struct xucred *xucred)
{
 int ngroups;

 ngroups = xucred->cr_ngroups - 1;
 if (ngroups > NGRPS)
  ngroups = NGRPS;
        if (cl->cl_auth != ((void*)0))
                cl->cl_auth->ah_ops->ah_destroy(cl->cl_auth);
        cl->cl_auth = authunix_create(hostname,
                        xucred->cr_uid,
                        xucred->cr_groups[0],
                        ngroups,
                        &xucred->cr_groups[1]);
}
