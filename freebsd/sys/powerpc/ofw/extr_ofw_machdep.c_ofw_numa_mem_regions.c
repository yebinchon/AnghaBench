
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct numa_mem_region {scalar_t__ mr_domain; scalar_t__ mr_size; scalar_t__ mr_start; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef scalar_t__ cell_t ;


 int MPASS (int) ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 int OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ bootverbose ;
 int parse_numa_ofw_memory (scalar_t__,char*,struct numa_mem_region*) ;
 int printf (char*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

void
ofw_numa_mem_regions(struct numa_mem_region *memp, int *memsz)
{
 phandle_t phandle;
 int res, count, msz;
 char name[31];
 cell_t associativity[5];
 struct numa_mem_region *curmemp;

 msz = 0;



 for (phandle = OF_child(OF_peer(0)); phandle != 0;
     phandle = OF_peer(phandle)) {
  if (OF_getprop(phandle, "name", name, sizeof(name)) <= 0)
   continue;
  if (strncmp(name, "memory@", strlen("memory@")) != 0)
   continue;

  count = parse_numa_ofw_memory(phandle, "reg", &memp[msz]);
  if (count == 0)
   continue;
  curmemp = &memp[msz];
  res = OF_getproplen(phandle, "ibm,associativity");
  if (res <= 0)
   continue;
  MPASS(count == 1);
  OF_getencprop(phandle, "ibm,associativity",
   associativity, res);
  curmemp->mr_domain = associativity[3];
  if (bootverbose)
   printf("%s %#jx-%#jx domain(%ju)\n",
       name, (uintmax_t)curmemp->mr_start,
       (uintmax_t)curmemp->mr_start + curmemp->mr_size,
       (uintmax_t)curmemp->mr_domain);
  msz += count;
 }
 *memsz = msz;
}
