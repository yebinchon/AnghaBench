
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int * oaddr; } ;


 int AliasHandleCUSeeMeIn (struct libalias*,struct ip*,int ) ;

__attribute__((used)) static int
protohandlerin(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 AliasHandleCUSeeMeIn(la, pip, *ah->oaddr);
 return (0);
}
