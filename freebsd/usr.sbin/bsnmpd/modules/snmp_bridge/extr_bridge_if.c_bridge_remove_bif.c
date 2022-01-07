
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 int TAILQ_REMOVE (int *,struct bridge_if*,int ) ;
 int b_if ;
 int bridge_addrs_free (struct bridge_if*) ;
 int bridge_ifs ;
 int bridge_members_free (struct bridge_if*) ;
 int free (struct bridge_if*) ;

void
bridge_remove_bif(struct bridge_if *bif)
{
 bridge_members_free(bif);
 bridge_addrs_free(bif);
 TAILQ_REMOVE(&bridge_ifs, bif, b_if);
 free(bif);
}
