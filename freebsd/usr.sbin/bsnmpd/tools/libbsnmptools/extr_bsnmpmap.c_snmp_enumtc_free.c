
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_type {scalar_t__ snmp_enum; struct enum_type* name; } ;


 int enum_pairs_free (scalar_t__) ;
 int free (struct enum_type*) ;

void
snmp_enumtc_free(struct enum_type *tc)
{
 if (tc->name)
  free(tc->name);
 if (tc->snmp_enum)
  enum_pairs_free(tc->snmp_enum);
 free(tc);
}
