
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int * aport; int aaddr; int lnk; } ;


 int AliasHandleUdpNbt (struct libalias*,struct ip*,int ,int ,int ) ;

__attribute__((used)) static int
protohandler1(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 return (AliasHandleUdpNbt(la, pip, ah->lnk, ah->aaddr, *ah->aport));
}
