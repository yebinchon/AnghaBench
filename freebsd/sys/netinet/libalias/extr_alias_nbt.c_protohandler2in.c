
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int dport; int oaddr; int aport; int aaddr; int lnk; } ;


 int AliasHandleUdpNbtNS (struct libalias*,struct ip*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
protohandler2in(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 AliasHandleUdpNbtNS(la, pip, ah->lnk, ah->aaddr, ah->aport,
        ah->oaddr, ah->dport);
 return (0);
}
