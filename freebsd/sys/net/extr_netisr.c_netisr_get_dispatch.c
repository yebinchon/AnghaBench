
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct netisr_proto {scalar_t__ np_dispatch; } ;


 scalar_t__ NETISR_DISPATCH_DEFAULT ;
 scalar_t__ netisr_dispatch_policy ;

__attribute__((used)) static u_int
netisr_get_dispatch(struct netisr_proto *npp)
{




 if (npp->np_dispatch != NETISR_DISPATCH_DEFAULT)
  return (npp->np_dispatch);
 return (netisr_dispatch_policy);
}
