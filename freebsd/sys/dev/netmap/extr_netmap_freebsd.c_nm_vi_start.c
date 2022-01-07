
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int panic (char*) ;

__attribute__((used)) static void
nm_vi_start(struct ifnet *ifp)
{
 panic("nm_vi_start() must not be called");
}
