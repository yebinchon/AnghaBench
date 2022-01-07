
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct alias_data {int * dport; int * oaddr; } ;


 scalar_t__ CUSEEME_PORT_NUMBER ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
fingerprint(struct libalias *la, struct alias_data *ah)
{

 if (ah->dport == ((void*)0) || ah->oaddr == ((void*)0))
  return (-1);
 if (ntohs(*ah->dport) == CUSEEME_PORT_NUMBER)
  return (0);
 return (-1);
}
