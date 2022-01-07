
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct fname {int name; int cut; } ;
typedef int int32_t ;


 int input_close () ;
 int input_fopen (int ) ;
 int snmp_import (struct snmp_toolinfo*) ;
 int snmp_import_init (int *) ;
 int warnx (char*,int ) ;

int32_t
snmp_import_file(struct snmp_toolinfo *snmptoolctx, struct fname *file)
{
 int idx;

 snmp_import_init(&(file->cut));
 input_fopen(file->name);
 if ((idx = snmp_import(snmptoolctx)) < 0)
  warnx("Failed to read mappings from file %s", file->name);

 input_close();

 return (idx);
}
