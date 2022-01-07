
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct bridge_if {int dummy; } ;


 size_t IFNAMSIZ ;
 int bcopy (char const*,char*,size_t) ;
 struct bridge_if* bif_default ;
 char* bif_default_name ;
 struct bridge_if* bridge_if_find_ifname (char*) ;

__attribute__((used)) static int
bridge_set_default_name(const char *bif_name, uint len)
{
 struct bridge_if *bif;

 if (len >= IFNAMSIZ)
  return (-1);

 bcopy(bif_name, bif_default_name, len);
 bif_default_name[len] = '\0';

 if ((bif = bridge_if_find_ifname(bif_default_name)) == ((void*)0)) {
  bif_default = ((void*)0);
  return (0);
 }

 bif_default = bif;
 return (1);
}
