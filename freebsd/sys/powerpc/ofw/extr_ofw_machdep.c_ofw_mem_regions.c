
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int excise_fdt_reserved (struct mem_region*,int) ;
 int excise_initrd_region (struct mem_region*,int) ;
 int excise_msi_region (struct mem_region*,int) ;
 scalar_t__ opal_check () ;
 int parse_ofw_memory (scalar_t__,char*,struct mem_region*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
ofw_mem_regions(struct mem_region *memp, int *memsz,
  struct mem_region *availp, int *availsz)
{
 phandle_t phandle;
 int asz, msz;
 int res;
 char name[31];

 asz = msz = 0;




 for (phandle = OF_child(OF_peer(0)); phandle != 0;
     phandle = OF_peer(phandle)) {
  if (OF_getprop(phandle, "name", name, sizeof(name)) <= 0)
   continue;
  if (strncmp(name, "memory", sizeof(name)) != 0 &&
      strncmp(name, "memory@", strlen("memory@")) != 0)
   continue;

  res = parse_ofw_memory(phandle, "reg", &memp[msz]);
  msz += res;







  if (OF_getproplen(phandle, "linux,usable-memory") >= 0)
   res = parse_ofw_memory(phandle, "linux,usable-memory",
       &availp[asz]);
  else if (OF_getproplen(phandle, "available") >= 0)
   res = parse_ofw_memory(phandle, "available",
       &availp[asz]);
  else
   res = parse_ofw_memory(phandle, "reg", &availp[asz]);
  asz += res;
 }
 *memsz = msz;
 *availsz = asz;
}
