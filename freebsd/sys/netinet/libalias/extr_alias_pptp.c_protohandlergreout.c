
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int dummy; } ;


 scalar_t__ AliasHandlePptpGreOut (struct libalias*,struct ip*) ;

__attribute__((used)) static int
protohandlergreout(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 if (AliasHandlePptpGreOut(la, pip) == 0)
  return (0);
 return (-1);
}
