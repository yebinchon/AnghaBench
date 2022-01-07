
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int V_if_index ;
 int V_nd6_defifindex ;
 int * V_nd6_defifp ;
 int * ifnet_byindex (int) ;
 int scope6_setdefault (int *) ;

int
nd6_setdefaultiface(int ifindex)
{
 int error = 0;

 if (ifindex < 0 || V_if_index < ifindex)
  return (EINVAL);
 if (ifindex != 0 && !ifnet_byindex(ifindex))
  return (EINVAL);

 if (V_nd6_defifindex != ifindex) {
  V_nd6_defifindex = ifindex;
  if (V_nd6_defifindex > 0)
   V_nd6_defifp = ifnet_byindex(V_nd6_defifindex);
  else
   V_nd6_defifp = ((void*)0);






  scope6_setdefault(V_nd6_defifp);
 }

 return (error);
}
