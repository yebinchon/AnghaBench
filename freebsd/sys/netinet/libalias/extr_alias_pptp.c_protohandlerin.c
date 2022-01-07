
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int lnk; } ;


 int AliasHandlePptpIn (struct libalias*,struct ip*,int ) ;

__attribute__((used)) static int
protohandlerin(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 AliasHandlePptpIn(la, pip, ah->lnk);
 return (0);
}
