
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int sysindex; int bif_name; } ;


 int LOG_ERR ;
 int bridge_addrs_dump (struct bridge_if*) ;
 struct bridge_if* bridge_first_bif () ;
 struct bridge_if* bridge_next_bif (struct bridge_if*) ;
 int bridge_ports_dump (struct bridge_if*) ;
 int syslog (int ,char*,int ,int ) ;

void
bridge_ifs_dump(void)
{
 struct bridge_if *bif;

 for (bif = bridge_first_bif(); bif != ((void*)0);
  bif = bridge_next_bif(bif)) {
  syslog(LOG_ERR, "Bridge %s, index - %d", bif->bif_name,
      bif->sysindex);
  bridge_ports_dump(bif);
  bridge_addrs_dump(bif);
 }
}
