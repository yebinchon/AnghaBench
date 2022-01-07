
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int maxpktsize; int lnk; } ;


 int AliasHandleIrcOut (struct libalias*,struct ip*,int ,int ) ;
 int PKTSIZE ;
 int free (scalar_t__) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ newpacket ;

__attribute__((used)) static int
protohandler(struct libalias *la, struct ip *pip, struct alias_data *ah)
{

 newpacket = malloc(PKTSIZE);
 if (newpacket) {
  AliasHandleIrcOut(la, pip, ah->lnk, ah->maxpktsize);
  free(newpacket);
 }
 return (0);
}
