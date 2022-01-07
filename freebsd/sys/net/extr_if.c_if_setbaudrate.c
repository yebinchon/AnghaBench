
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ifnet {int if_baudrate; } ;



uint64_t
if_setbaudrate(struct ifnet *ifp, uint64_t baudrate)
{
 uint64_t oldbrate;

 oldbrate = ifp->if_baudrate;
 ifp->if_baudrate = baudrate;
 return (oldbrate);
}
