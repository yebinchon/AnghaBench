
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s_i ;
typedef int int32_t ;
typedef int i ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
struct TYPE_2__ {int val; int name; } ;


 int LEAF_begemotBridgeLayer2PfStatus ;
 int LOG_ERR ;
 int SNMP_OP_SET ;
 int asprintf (char**,char*,int ,int ) ;
 TYPE_1__* bridge_pf_sysctl ;
 int bridge_sysctl ;
 int errno ;
 int free (char*) ;
 int strerror (int ) ;
 int sysctlbyname (char*,int*,size_t*,int*,size_t) ;
 int syslog (int ,char*,char*,int ) ;

int32_t
bridge_do_pfctl(int32_t bridge_ctl, enum snmp_op op, int32_t *val)
{
 char *mib_oid;
 size_t len, s_len;
 int32_t i, s_i;

 if (bridge_ctl >= LEAF_begemotBridgeLayer2PfStatus)
  return (-2);

 if (op == SNMP_OP_SET) {
  s_i = *val;
  s_len = sizeof(s_i);
 } else
  s_len = 0;

 len = sizeof(i);

 asprintf(&mib_oid, "%s%s", bridge_sysctl,
     bridge_pf_sysctl[bridge_ctl].name);
 if (mib_oid == ((void*)0))
  return (-1);

 if (sysctlbyname(mib_oid, &i, &len, (op == SNMP_OP_SET ? &s_i : ((void*)0)),
     s_len) == -1) {
  syslog(LOG_ERR, "sysctl(%s) failed - %s", mib_oid,
      strerror(errno));
  free(mib_oid);
  return (-1);
 }

 bridge_pf_sysctl[bridge_ctl].val = i;
 *val = i;

 free(mib_oid);

 return (i);
}
