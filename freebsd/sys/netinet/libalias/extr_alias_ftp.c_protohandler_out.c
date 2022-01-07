
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int maxpktsize; int lnk; } ;


 int AliasHandleFtpOut (struct libalias*,struct ip*,int ,int ) ;

__attribute__((used)) static int
protohandler_out(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 AliasHandleFtpOut(la, pip, ah->lnk, ah->maxpktsize);
 return (0);
}
