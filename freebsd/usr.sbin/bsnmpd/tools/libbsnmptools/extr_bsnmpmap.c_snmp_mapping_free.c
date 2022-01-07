
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int * mappings; int snmp_tclist; int snmp_tablelist; int snmp_enumlist; int snmp_cnt64list; int snmp_gaugelist; int snmp_cntlist; int snmp_ticklist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; int snmp_nodelist; } ;


 int free (int *) ;
 int snmp_enumtc_listfree (int *) ;
 int snmp_mapping_listfree (int *) ;
 int snmp_mapping_table_listfree (int *) ;

int
snmp_mapping_free(struct snmp_toolinfo *snmptoolctx)
{
 if (snmptoolctx == ((void*)0) || snmptoolctx->mappings == ((void*)0))
  return (-1);

 snmp_mapping_listfree(&snmptoolctx->snmp_nodelist);
 snmp_mapping_listfree(&snmptoolctx->snmp_intlist);
 snmp_mapping_listfree(&snmptoolctx->snmp_octlist);
 snmp_mapping_listfree(&snmptoolctx->snmp_oidlist);
 snmp_mapping_listfree(&snmptoolctx->snmp_iplist);
 snmp_mapping_listfree(&snmptoolctx->snmp_ticklist);
 snmp_mapping_listfree(&snmptoolctx->snmp_cntlist);
 snmp_mapping_listfree(&snmptoolctx->snmp_gaugelist);
 snmp_mapping_listfree(&snmptoolctx->snmp_cnt64list);
 snmp_mapping_listfree(&snmptoolctx->snmp_enumlist);
 snmp_mapping_table_listfree(&snmptoolctx->snmp_tablelist);
 snmp_enumtc_listfree(&snmptoolctx->snmp_tclist);
 free(snmptoolctx->mappings);

 return (0);
}
