
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_type; } ;
 int printf (char*,int) ;

int
in6_if2idlen(struct ifnet *ifp)
{
 switch (ifp->if_type) {
 case 136:
 case 128:
 case 131:
 case 137:
 case 132:
  return (64);
 case 129:
  return (64);
 case 135:
  return (64);
 case 133:
  return (64);
 case 134:
  return (64);
 case 130:
  return (64);
 default:
  printf("in6_if2idlen: unknown link type (%d)\n", ifp->if_type);
  return (64);
 }
}
