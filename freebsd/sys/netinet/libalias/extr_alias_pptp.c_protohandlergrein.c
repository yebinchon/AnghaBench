
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int packetAliasMode; } ;
struct ip {int dummy; } ;
struct alias_data {int dummy; } ;


 scalar_t__ AliasHandlePptpGreIn (struct libalias*,struct ip*) ;
 int PKT_ALIAS_PROXY_ONLY ;

__attribute__((used)) static int
protohandlergrein(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY ||
     AliasHandlePptpGreIn(la, pip) == 0)
  return (0);
 return (-1);
}
