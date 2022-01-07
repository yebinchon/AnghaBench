
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct yenta_chipinfo {scalar_t__ yc_id; char* yc_name; int yc_chiptype; } ;


 struct yenta_chipinfo* yc_chipsets ;

__attribute__((used)) static int
cbb_chipset(uint32_t pci_id, const char **namep)
{
 struct yenta_chipinfo *ycp;

 for (ycp = yc_chipsets; ycp->yc_id != 0 && pci_id != ycp->yc_id; ++ycp)
  continue;
 if (namep != ((void*)0))
  *namep = ycp->yc_name;
 return (ycp->yc_chiptype);
}
