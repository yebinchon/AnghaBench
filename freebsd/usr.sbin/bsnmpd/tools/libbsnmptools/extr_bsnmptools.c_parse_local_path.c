
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int opt_arg ;
typedef int int32_t ;
struct TYPE_2__ {int local_path; } ;
typedef int SNMP_LOCAL_PATH ;


 int assert (int ) ;
 TYPE_1__ snmp_client ;
 int strlcpy (int ,char*,int) ;
 int warnx (char*,char*) ;

int32_t
parse_local_path(char *opt_arg)
{
 assert(opt_arg != ((void*)0));

 if (sizeof(opt_arg) > sizeof(SNMP_LOCAL_PATH)) {
  warnx("Filename too long - %s", opt_arg);
  return (-1);
 }

 strlcpy(snmp_client.local_path, opt_arg, sizeof(SNMP_LOCAL_PATH));
 return (2);
}
