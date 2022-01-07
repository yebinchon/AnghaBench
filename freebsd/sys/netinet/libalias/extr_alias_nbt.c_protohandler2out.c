
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int ip_src; } ;
struct alias_data {int aport; int aaddr; int sport; int lnk; } ;


 int AliasHandleUdpNbtNS (struct libalias*,struct ip*,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int
protohandler2out(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 return (AliasHandleUdpNbtNS(la, pip, ah->lnk, &pip->ip_src, ah->sport,
      ah->aaddr, ah->aport));
}
