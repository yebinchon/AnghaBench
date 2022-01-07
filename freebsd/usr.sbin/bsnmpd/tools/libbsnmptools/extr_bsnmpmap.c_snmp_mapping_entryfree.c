
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_oid2str {scalar_t__ tc; int snmp_enum; struct snmp_oid2str* string; } ;


 scalar_t__ SNMP_TC_OWN ;
 int enum_pairs_free (int ) ;
 int free (struct snmp_oid2str*) ;

void
snmp_mapping_entryfree(struct snmp_oid2str *entry)
{
 if (entry->string)
  free(entry->string);

 if (entry->tc == SNMP_TC_OWN)
  enum_pairs_free(entry->snmp_enum);

 free(entry);
}
