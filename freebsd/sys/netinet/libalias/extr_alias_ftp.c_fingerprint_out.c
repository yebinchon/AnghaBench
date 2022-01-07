
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct alias_data {scalar_t__ maxpktsize; int * sport; int * dport; int * lnk; } ;


 scalar_t__ FTP_CONTROL_PORT_NUMBER ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
fingerprint_out(struct libalias *la, struct alias_data *ah)
{

 if (ah->dport == ((void*)0) || ah->sport == ((void*)0) || ah->lnk == ((void*)0) ||
     ah->maxpktsize == 0)
  return (-1);
 if (ntohs(*ah->dport) == FTP_CONTROL_PORT_NUMBER ||
     ntohs(*ah->sport) == FTP_CONTROL_PORT_NUMBER)
  return (0);
 return (-1);
}
