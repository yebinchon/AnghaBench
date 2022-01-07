
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int platform_t ;
typedef scalar_t__ phandle_t ;
typedef int compat ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
powermac_probe(platform_t plat)
{
 char compat[255];
 ssize_t compatlen;
 char *curstr;
 phandle_t root;

 root = OF_peer(0);
 if (root == 0)
  return (ENXIO);

 compatlen = OF_getprop(root, "compatible", compat, sizeof(compat));

 for (curstr = compat; curstr < compat + compatlen;
     curstr += strlen(curstr) + 1) {
  if (strncmp(curstr, "MacRISC", 7) == 0)
   return (BUS_PROBE_SPECIFIC);
 }

 return (ENXIO);
}
