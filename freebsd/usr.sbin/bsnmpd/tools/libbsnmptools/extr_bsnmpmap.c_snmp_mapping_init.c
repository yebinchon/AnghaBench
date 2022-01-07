
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_mappings {int dummy; } ;


 int LOG_ERR ;
 struct snmp_mappings* calloc (int,int) ;
 int errno ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

struct snmp_mappings *
snmp_mapping_init(void)
{
 struct snmp_mappings *m;

 if ((m = calloc(1, sizeof(struct snmp_mappings))) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  return (((void*)0));
 }

 return (m);
}
