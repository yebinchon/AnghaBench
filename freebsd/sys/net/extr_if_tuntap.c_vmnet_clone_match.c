
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int dummy; } ;


 int TUN_VMNET ;
 scalar_t__ tuntap_name2info (char const*,int *,int*) ;

__attribute__((used)) static int
vmnet_clone_match(struct if_clone *ifc, const char *name)
{
 int tunflags;

 if (tuntap_name2info(name, ((void*)0), &tunflags) == 0) {
  if ((tunflags & TUN_VMNET) != 0)
   return (1);
 }

 return (0);
}
