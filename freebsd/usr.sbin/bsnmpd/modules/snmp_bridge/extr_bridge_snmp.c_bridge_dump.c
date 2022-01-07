
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int bif_name; } ;


 int LOG_ERR ;
 struct bridge_if* bridge_get_default () ;
 int bridge_ifs_dump () ;
 int bridge_pf_dump () ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static void
bridge_dump(void)
{
 struct bridge_if *bif;

 if ((bif = bridge_get_default()) == ((void*)0))
  syslog(LOG_ERR, "Dump: no default bridge interface");
 else
  syslog(LOG_ERR, "Dump: default bridge interface %s",
       bif->bif_name);

 bridge_ifs_dump();
 bridge_pf_dump();
}
