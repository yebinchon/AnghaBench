
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {scalar_t__ objects; int snmp_objectlist; } ;
struct snmp_object {int dummy; } ;
typedef scalar_t__ (* snmp_verify_inoid_f ) (struct snmp_toolinfo*,struct snmp_object*,char*) ;
typedef int int32_t ;


 int LOG_ERR ;
 int SLIST_INSERT_HEAD (int *,struct snmp_object*,int ) ;
 scalar_t__ SNMP_MAX_BINDINGS ;
 struct snmp_object* calloc (int,int) ;
 int errno ;
 int free (struct snmp_object*) ;
 int link ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,char*) ;

int32_t
snmp_object_add(struct snmp_toolinfo *snmptoolctx, snmp_verify_inoid_f func,
    char *string)
{
 struct snmp_object *obj;

 if (snmptoolctx == ((void*)0))
  return (-1);


 if (snmptoolctx->objects >= SNMP_MAX_BINDINGS) {
  warnx("Too many bindings in PDU - %u", snmptoolctx->objects + 1);
  return (-1);
 }

 if ((obj = calloc(1, sizeof(struct snmp_object))) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  return (-1);
 }

 if (func(snmptoolctx, obj, string) < 0) {
  warnx("Invalid OID - %s", string);
  free(obj);
  return (-1);
 }

 snmptoolctx->objects++;
 SLIST_INSERT_HEAD(&snmptoolctx->snmp_objectlist, obj, link);

 return (1);
}
