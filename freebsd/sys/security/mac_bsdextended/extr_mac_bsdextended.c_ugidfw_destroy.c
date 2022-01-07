
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int dummy; } ;


 int MAC_BSDEXTENDED_MAXRULES ;
 int M_MACBSDEXTENDED ;
 int free (int *,int ) ;
 int mtx_destroy (int *) ;
 int ** rules ;
 int ugidfw_mtx ;

__attribute__((used)) static void
ugidfw_destroy(struct mac_policy_conf *mpc)
{
 int i;

 for (i = 0; i < MAC_BSDEXTENDED_MAXRULES; i++) {
  if (rules[i] != ((void*)0))
   free(rules[i], M_MACBSDEXTENDED);
 }
 mtx_destroy(&ugidfw_mtx);
}
