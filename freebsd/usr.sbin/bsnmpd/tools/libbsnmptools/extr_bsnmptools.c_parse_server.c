
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ trans; int * chost; } ;


 int LOG_ERR ;
 int SNMP_DEFAULT_LOCAL ;
 scalar_t__ SNMP_TRANS_UDP ;
 int assert (int ) ;
 int errno ;
 int * malloc (scalar_t__) ;
 TYPE_1__ snmp_client ;
 scalar_t__ snmp_parse_server (TYPE_1__*,char*) ;
 int strcpy (int *,int ) ;
 int strerror (int ) ;
 scalar_t__ strlen (int ) ;
 int syslog (int ,char*,int ) ;

int32_t
parse_server(char *opt_arg)
{
 assert(opt_arg != ((void*)0));

 if (snmp_parse_server(&snmp_client, opt_arg) < 0)
  return (-1);

 if (snmp_client.trans > SNMP_TRANS_UDP && snmp_client.chost == ((void*)0)) {
  if ((snmp_client.chost = malloc(strlen(SNMP_DEFAULT_LOCAL) + 1))
      == ((void*)0)) {
   syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
   return (-1);
  }
  strcpy(snmp_client.chost, SNMP_DEFAULT_LOCAL);
 }

 return (2);
}
