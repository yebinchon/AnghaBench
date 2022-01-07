
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int * passwd; } ;
struct TYPE_2__ {int * cport; int * chost; } ;


 int free (int *) ;
 int free_filelist (struct snmp_toolinfo*) ;
 TYPE_1__ snmp_client ;
 int snmp_mapping_free (struct snmp_toolinfo*) ;
 int snmp_object_freeall (struct snmp_toolinfo*) ;

void
snmp_tool_freeall(struct snmp_toolinfo *snmptoolctx)
{
 if (snmp_client.chost != ((void*)0)) {
  free(snmp_client.chost);
  snmp_client.chost = ((void*)0);
 }

 if (snmp_client.cport != ((void*)0)) {
  free(snmp_client.cport);
  snmp_client.cport = ((void*)0);
 }

 snmp_mapping_free(snmptoolctx);
 free_filelist(snmptoolctx);
 snmp_object_freeall(snmptoolctx);

 if (snmptoolctx->passwd != ((void*)0)) {
  free(snmptoolctx->passwd);
  snmptoolctx->passwd = ((void*)0);
 }
}
