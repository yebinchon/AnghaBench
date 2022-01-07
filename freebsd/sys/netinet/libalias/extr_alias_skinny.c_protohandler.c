
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int lnk; } ;


 int AliasHandleSkinny (struct libalias*,struct ip*,int ) ;

__attribute__((used)) static int
protohandler(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

        AliasHandleSkinny(la, pip, ah->lnk);
 return (0);
}
