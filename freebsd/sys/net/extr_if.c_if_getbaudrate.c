
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ifnet {int if_baudrate; } ;
typedef scalar_t__ if_t ;



uint64_t
if_getbaudrate(if_t ifp)
{

 return (((struct ifnet *)ifp)->if_baudrate);
}
