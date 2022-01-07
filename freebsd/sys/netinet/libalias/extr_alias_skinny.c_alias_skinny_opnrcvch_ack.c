
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef void* u_int32_t ;
struct tcphdr {int th_x2; scalar_t__ th_sum; } ;
struct libalias {int dummy; } ;
struct ip {int ip_src; } ;
struct in_addr {int s_addr; } ;
struct alias_link {int dummy; } ;
struct OpenReceiveChannelAck {void* port; void* ipAddr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
typedef int ConvDirection ;


 struct alias_link* FindUdpTcpOut (struct libalias*,int ,struct in_addr,int ,int ,int ,int) ;
 TYPE_1__ GetAliasAddress (struct alias_link*) ;
 int GetAliasPort (struct alias_link*) ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 scalar_t__ TcpChecksum (struct ip*) ;
 int htons (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
alias_skinny_opnrcvch_ack(struct libalias *la, struct OpenReceiveChannelAck *opnrcvch_ack,
    struct ip *pip, struct tcphdr *tc,
    struct alias_link *lnk, u_int32_t * localIpAddr,
    ConvDirection direction)
{
 struct in_addr null_addr;
 struct alias_link *opnrcv_lnk;
 u_int32_t localPort;

 (void)lnk;
 (void)direction;

 *localIpAddr = (u_int32_t) opnrcvch_ack->ipAddr;
 localPort = opnrcvch_ack->port;

 null_addr.s_addr = INADDR_ANY;
 opnrcv_lnk = FindUdpTcpOut(la, pip->ip_src, null_addr,
     htons((u_short) opnrcvch_ack->port), 0,
     IPPROTO_UDP, 1);
 opnrcvch_ack->ipAddr = (u_int32_t) GetAliasAddress(opnrcv_lnk).s_addr;
 opnrcvch_ack->port = (u_int32_t) ntohs(GetAliasPort(opnrcv_lnk));

 tc->th_sum = 0;



 tc->th_sum = TcpChecksum(pip);

 return (0);
}
