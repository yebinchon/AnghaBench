
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ifnet {int dummy; } ;


 int IF_NODOM ;
 struct ifnet* if_alloc_domain (int ,int ) ;

struct ifnet *
if_alloc(u_char type)
{

 return (if_alloc_domain(type, IF_NODOM));
}
