
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_systemid {int lsi_mac; int lsi_prio; } ;
typedef int macbuf ;


 int LACP_MACSTR_MAX ;
 char* lacp_format_mac (int ,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,int,char*) ;

const char *
lacp_format_systemid(const struct lacp_systemid *sysid,
    char *buf, size_t buflen)
{
 char macbuf[LACP_MACSTR_MAX+1];

 snprintf(buf, buflen, "%04X,%s",
     ntohs(sysid->lsi_prio),
     lacp_format_mac(sysid->lsi_mac, macbuf, sizeof(macbuf)));

 return (buf);
}
