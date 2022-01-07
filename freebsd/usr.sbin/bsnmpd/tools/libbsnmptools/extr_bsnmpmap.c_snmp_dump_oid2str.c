
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_oid2str {TYPE_1__* table_idx; int snmp_enum; int strlen; int access; int syntax; int string; int var; } ;
typedef int buf ;
struct TYPE_2__ {char* string; } ;


 int ASN_OIDSTRLEN ;
 int DEBUG (int ,char*,char*,...) ;
 int asn_oid2str_r (int *,char*) ;
 int memset (char*,int ,int) ;
 int snmp_dump_enumpairs (int ) ;
 int stderr ;

void
snmp_dump_oid2str(struct snmp_oid2str *entry)
{
 char buf[ASN_OIDSTRLEN];

 if (entry != ((void*)0)) {
  memset(buf, 0, sizeof(buf));
  asn_oid2str_r(&(entry->var), buf);
  DEBUG(stderr, "%s - %s - %d - %d - %d", buf, entry->string,
      entry->syntax, entry->access, entry->strlen);
  snmp_dump_enumpairs(entry->snmp_enum);
  DEBUG(stderr,"%s \n", (entry->table_idx == ((void*)0))?"No table":
      entry->table_idx->string);
 }
}
