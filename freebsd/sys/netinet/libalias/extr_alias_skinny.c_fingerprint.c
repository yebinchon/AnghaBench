
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {scalar_t__ skinnyPort; } ;
struct alias_data {int * dport; int * sport; int * lnk; } ;


 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
fingerprint(struct libalias *la, struct alias_data *ah)
{

 if (ah->dport == ((void*)0) || ah->sport == ((void*)0) || ah->lnk == ((void*)0))
  return (-1);
 if (la->skinnyPort != 0 && (ntohs(*ah->sport) == la->skinnyPort ||
        ntohs(*ah->dport) == la->skinnyPort))
  return (0);
 return (-1);
}
