
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int ip_dst; int ip_src; } ;
struct alias_data {int maxpktsize; int lnk; int * aport; int * sport; int * dport; } ;


 int AliasHandleRtspOut (struct libalias*,struct ip*,int ,int ) ;
 int FindRtspOut (struct libalias*,int ,int ,int ,int ,int ) ;
 int IPPROTO_UDP ;
 scalar_t__ TFTP_PORT_NUMBER ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
protohandler(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 if (ntohs(*ah->dport) == TFTP_PORT_NUMBER)
  FindRtspOut(la, pip->ip_src, pip->ip_dst,
        *ah->sport, *ah->aport, IPPROTO_UDP);
 else AliasHandleRtspOut(la, pip, ah->lnk, ah->maxpktsize);
 return (0);
}
