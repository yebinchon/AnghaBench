
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 int bridge_tpe_bif_free (int *,struct bridge_if*) ;
 int tp_entries ;

void
bridge_addrs_free(struct bridge_if *bif)
{
 bridge_tpe_bif_free(&tp_entries, bif);
}
