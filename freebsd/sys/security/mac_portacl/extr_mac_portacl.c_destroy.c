
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;


 int mtx_destroy (int *) ;
 int rule_head ;
 int rule_mtx ;
 int toast_rules (int *) ;

__attribute__((used)) static void
destroy(struct mac_policy_conf *mpc)
{

 mtx_destroy(&rule_mtx);
 toast_rules(&rule_head);
}
