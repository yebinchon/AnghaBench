
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_tablelist; int snmp_enumlist; int snmp_cnt64list; int snmp_gaugelist; int snmp_cntlist; int snmp_ticklist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; int snmp_nodelist; int * mappings; } ;


 int _bsnmptools_debug ;
 int fprintf (int ,char*) ;
 int snmp_mapping_dumplist (int *) ;
 int snmp_mapping_dumptable (int *) ;
 int stderr ;

void
snmp_mapping_dump(struct snmp_toolinfo *snmptoolctx )
{
 if (!_bsnmptools_debug)
  return;

 if (snmptoolctx == ((void*)0)) {
  fprintf(stderr,"No snmptool context!\n");
  return;
 }

 if (snmptoolctx->mappings == ((void*)0)) {
  fprintf(stderr,"No mappings!\n");
  return;
 }

 fprintf(stderr,"snmp_nodelist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_nodelist);

 fprintf(stderr,"snmp_intlist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_intlist);

 fprintf(stderr,"snmp_octlist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_octlist);

 fprintf(stderr,"snmp_oidlist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_oidlist);

 fprintf(stderr,"snmp_iplist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_iplist);

 fprintf(stderr,"snmp_ticklist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_ticklist);

 fprintf(stderr,"snmp_cntlist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_cntlist);

 fprintf(stderr,"snmp_gaugelist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_gaugelist);

 fprintf(stderr,"snmp_cnt64list:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_cnt64list);

 fprintf(stderr,"snmp_enumlist:\n");
 snmp_mapping_dumplist(&snmptoolctx->snmp_enumlist);

 fprintf(stderr,"snmp_tablelist:\n");
 snmp_mapping_dumptable(&snmptoolctx->snmp_tablelist);
}
