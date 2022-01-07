
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 struct bridge_if* bridge_first_bif () ;
 int bridge_list_age ;
 struct bridge_if* bridge_next_bif (struct bridge_if*) ;
 int bridge_ports_update_listage () ;
 int bridge_update_bif (struct bridge_if*) ;
 int time (int *) ;

void
bridge_update_all_ifs(void)
{
 struct bridge_if *bif, *t_bif;

 for (bif = bridge_first_bif(); bif != ((void*)0); bif = t_bif) {
  t_bif = bridge_next_bif(bif);
  bridge_update_bif(bif);
 }

 bridge_ports_update_listage();
 bridge_list_age = time(((void*)0));
}
