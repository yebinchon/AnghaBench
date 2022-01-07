
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysid ;
struct lacp_peerinfo {int lip_portid; int lip_key; int lip_systemid; } ;
typedef int portid ;


 int LACP_PORTIDSTR_MAX ;
 int LACP_SYSTEMIDSTR_MAX ;
 char* lacp_format_portid (int *,char*,int) ;
 char* lacp_format_systemid (int *,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,char*,int,char*) ;

const char *
lacp_format_partner(const struct lacp_peerinfo *peer, char *buf, size_t buflen)
{
 char sysid[LACP_SYSTEMIDSTR_MAX+1];
 char portid[LACP_PORTIDSTR_MAX+1];

 snprintf(buf, buflen, "(%s,%04X,%s)",
     lacp_format_systemid(&peer->lip_systemid, sysid, sizeof(sysid)),
     ntohs(peer->lip_key),
     lacp_format_portid(&peer->lip_portid, portid, sizeof(portid)));

 return (buf);
}
