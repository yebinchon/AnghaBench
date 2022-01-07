
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rule_head ;
 int rule_mtx ;

__attribute__((used)) static void
init(struct mac_policy_conf *mpc)
{

 mtx_init(&rule_mtx, "rule_mtx", ((void*)0), MTX_DEF);
 TAILQ_INIT(&rule_head);
}
