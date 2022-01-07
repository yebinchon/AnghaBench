
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_peerinfo {int dummy; } ;
typedef int bstr ;
typedef int astr ;


 int LACP_PARTNERSTR_MAX ;
 scalar_t__ lacp_compare_peerinfo (struct lacp_peerinfo const*,struct lacp_peerinfo const*) ;
 char* lacp_format_partner (struct lacp_peerinfo const*,char*,int) ;
 int snprintf (char*,size_t,char*,char*,char*) ;

const char *
lacp_format_lagid(const struct lacp_peerinfo *a,
    const struct lacp_peerinfo *b, char *buf, size_t buflen)
{
 char astr[LACP_PARTNERSTR_MAX+1];
 char bstr[LACP_PARTNERSTR_MAX+1];
 snprintf(buf, buflen, "[%s,%s]",
     lacp_format_partner(a, astr, sizeof(astr)),
     lacp_format_partner(b, bstr, sizeof(bstr)));

 return (buf);
}
