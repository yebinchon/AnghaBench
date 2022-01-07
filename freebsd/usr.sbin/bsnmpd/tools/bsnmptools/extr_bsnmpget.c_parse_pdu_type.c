
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int SET_PDUTYPE (struct snmp_toolinfo*,int ) ;
 int SNMP_PDU_GET ;
 int SNMP_PDU_GETBULK ;
 int SNMP_PDU_GETNEXT ;
 int assert (int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_pdu_type(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
 assert(opt_arg != ((void*)0));

 if (strcasecmp(opt_arg, "getbulk") == 0)
  SET_PDUTYPE(snmptoolctx, SNMP_PDU_GETBULK);
 else if (strcasecmp(opt_arg, "getnext") == 0)
  SET_PDUTYPE(snmptoolctx, SNMP_PDU_GETNEXT);
 else if (strcasecmp(opt_arg, "get") == 0)
  SET_PDUTYPE(snmptoolctx, SNMP_PDU_GET);
 else {
  warnx("PDU type '%s' not supported.", opt_arg);
  return (-1);
 }

 return (2);
}
