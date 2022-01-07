
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_pairs {int dummy; } ;


 int LOG_ERR ;
 int STAILQ_INIT (struct enum_pairs*) ;
 int errno ;
 struct enum_pairs* malloc (int) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

struct enum_pairs *
enum_pairs_init(void)
{
 struct enum_pairs *snmp_enum;

 if ((snmp_enum = malloc(sizeof(struct enum_pairs))) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  return (((void*)0));
 }

 STAILQ_INIT(snmp_enum);
 return (snmp_enum);
}
