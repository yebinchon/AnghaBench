
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT3CFW_IDENT ;
 int LOG_ERR ;
 int exit (int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
usage(void)
{
 syslog(LOG_ERR, "Usage: %s -f FirmwareFile -n NodeName", BT3CFW_IDENT);
 exit(255);
}
