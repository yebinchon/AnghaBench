
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_l2tp_session_stats {int dummy; } ;
typedef TYPE_2__* hookpriv_p ;
typedef int hook_p ;
struct TYPE_4__ {scalar_t__ enable_dseq; scalar_t__ control_dseq; } ;
struct TYPE_5__ {scalar_t__ ns; scalar_t__ nr; int stats; TYPE_1__ conf; } ;


 TYPE_2__* NG_HOOK_PRIVATE (int ) ;
 int bzero (int *,int) ;

__attribute__((used)) static int
ng_l2tp_reset_session(hook_p hook, void *arg)
{
 const hookpriv_p hpriv = NG_HOOK_PRIVATE(hook);

 if (hpriv != ((void*)0)) {
  hpriv->conf.control_dseq = 0;
  hpriv->conf.enable_dseq = 0;
  bzero(&hpriv->stats, sizeof(struct ng_l2tp_session_stats));
  hpriv->nr = 0;
  hpriv->ns = 0;
 }
 return (-1);
}
