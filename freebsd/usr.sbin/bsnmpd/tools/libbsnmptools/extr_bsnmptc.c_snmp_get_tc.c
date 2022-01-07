
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {int tc; int tc_str; } ;


 int SNMP_STRING ;
 int SNMP_UNKNOWN ;
 int strlen (int ) ;
 int strncmp (int ,char*,int ) ;
 TYPE_1__* text_convs ;

enum snmp_tc
snmp_get_tc(char *str)
{
 int i;
 for (i = 0; i < SNMP_UNKNOWN; i++) {
  if (!strncmp(text_convs[i].tc_str, str,
      strlen(text_convs[i].tc_str)))
   return (text_convs[i].tc);
 }

 return (SNMP_STRING);
}
