
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ V_ipport_firstauto ;
 scalar_t__ V_ipport_lastauto ;
 int imax (int,int) ;
 int imin (int ,int) ;
 int maxsockets ;

__attribute__((used)) static int
tcptw_auto_size(void)
{
 int halfrange;





 if (V_ipport_lastauto > V_ipport_firstauto)
  halfrange = (V_ipport_lastauto - V_ipport_firstauto) / 2;
 else
  halfrange = (V_ipport_firstauto - V_ipport_lastauto) / 2;

 return (imin(imax(halfrange, 32), maxsockets / 5));
}
