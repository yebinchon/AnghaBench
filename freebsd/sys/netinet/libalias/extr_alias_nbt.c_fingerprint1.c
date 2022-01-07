
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct alias_data {int * sport; int * dport; int * aport; int * aaddr; int * lnk; } ;


 scalar_t__ NETBIOS_DGM_PORT_NUMBER ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
fingerprint1(struct libalias *la, struct alias_data *ah)
{

 if (ah->dport == ((void*)0) || ah->sport == ((void*)0) || ah->lnk == ((void*)0) ||
     ah->aaddr == ((void*)0) || ah->aport == ((void*)0))
  return (-1);
 if (ntohs(*ah->dport) == NETBIOS_DGM_PORT_NUMBER
     || ntohs(*ah->sport) == NETBIOS_DGM_PORT_NUMBER)
  return (0);
 return (-1);
}
