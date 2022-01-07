
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ENOTSUP ;

__attribute__((used)) static int
octm_medchange(struct ifnet *ifp)
{
 return (ENOTSUP);
}
