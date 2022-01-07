
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {scalar_t__ len; int * (* oct2tc ) (int,char*,char*) ;} ;


 int LOG_ERR ;
 int SNMP_UNKNOWN ;
 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int strerror (int ) ;
 int * stub1 (int,char*,char*) ;
 int syslog (int ,char*,int ) ;
 TYPE_1__* text_convs ;

char *
snmp_oct2tc(enum snmp_tc tc, uint32_t len, char *octets)
{
 uint32_t tc_len;
 char * buf;

 if (tc > SNMP_UNKNOWN)
  tc = SNMP_UNKNOWN;

 if (text_convs[tc].len > 0)
  tc_len = text_convs[tc].len;
 else
  tc_len = 2 * len + 3;

 if ((buf = malloc(tc_len)) == ((void*)0) ) {
  syslog(LOG_ERR, "malloc failed - %s", strerror(errno));
  return (((void*)0));
 }

 memset(buf, 0, tc_len);
 if (text_convs[tc].oct2tc(len, octets, buf) == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }

 return (buf);
}
