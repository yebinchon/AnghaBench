
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cc_var {int dummy; } ;
struct TYPE_2__ {int (* post_recovery ) (struct cc_var*) ;} ;


 int CCV (struct cc_var*,int ) ;
 int TF_ECN_PERMIT ;
 int dctcp_update_alpha (struct cc_var*) ;
 TYPE_1__ newreno_cc_algo ;
 int stub1 (struct cc_var*) ;
 int t_flags ;

__attribute__((used)) static void
dctcp_post_recovery(struct cc_var *ccv)
{
 newreno_cc_algo.post_recovery(ccv);

 if (CCV(ccv, t_flags) & TF_ECN_PERMIT)
  dctcp_update_alpha(ccv);
}
