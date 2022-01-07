
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pci_vendordata ;
 int pci_vendordata_size ;
 int sscanf (char*,char*,int*,char*) ;

__attribute__((used)) static int
pci_describe_parse_line(char **ptr, int *vendor, int *device, char **desc)
{
 char *cp = *ptr;
 int left;

 *device = -1;
 *vendor = -1;
 **desc = '\0';
 for (;;) {
  left = pci_vendordata_size - (cp - pci_vendordata);
  if (left <= 0) {
   *ptr = cp;
   return(1);
  }


  if (*cp != '\t' &&
      sscanf(cp, "%x\t%80[^\n]", vendor, *desc) == 2)
   break;

  if (*cp == '\t' &&
      sscanf(cp, "%x\t%80[^\n]", device, *desc) == 2)
   break;


  while (*cp != '\n' && left > 0) {
   cp++;
   left--;
  }
  if (*cp == '\n') {
   cp++;
   left--;
  }
 }

 while (*cp != '\n' && left > 0) {
  cp++;
  left--;
 }
 if (*cp == '\n' && left > 0)
  cp++;
 *ptr = cp;
 return(0);
}
