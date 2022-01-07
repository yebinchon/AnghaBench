
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_portid {int lpi_portno; int lpi_prio; } ;


 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,int,int) ;

const char *
lacp_format_portid(const struct lacp_portid *portid, char *buf, size_t buflen)
{
 snprintf(buf, buflen, "%04X,%04X",
     ntohs(portid->lpi_prio),
     ntohs(portid->lpi_portno));

 return (buf);
}
