
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int dummy; } ;


 int AliasHandleDummy (struct libalias*,struct ip*,struct alias_data*) ;

__attribute__((used)) static int
protohandler(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 AliasHandleDummy(la, pip, ah);
 return (0);
}
