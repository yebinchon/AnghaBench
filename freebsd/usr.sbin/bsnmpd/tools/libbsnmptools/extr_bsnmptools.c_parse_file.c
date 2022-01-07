
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int IsoOrgDod_OID ;
 int assert (int ) ;
 scalar_t__ parse_flist (struct snmp_toolinfo*,char*,int *,int *) ;

int32_t
parse_file(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
 assert(opt_arg != ((void*)0));

 if (parse_flist(snmptoolctx, opt_arg, ((void*)0), &IsoOrgDod_OID) < 0)
  return (-1);

 return (2);
}
