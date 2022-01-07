
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {char* bif_name; } ;


 int LOG_ERR ;
 struct bridge_if* bif_default ;
 int syslog (int ,char*,char*) ;

void
bridge_set_default(struct bridge_if *bif)
{
 bif_default = bif;

 syslog(LOG_ERR, "Set default bridge interface to: %s",
     bif == ((void*)0) ? "(none)" : bif->bif_name);
}
