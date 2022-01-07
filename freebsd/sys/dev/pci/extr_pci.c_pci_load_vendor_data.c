
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * caddr_t ;


 char* pci_vendordata ;
 size_t pci_vendordata_size ;
 void* preload_fetch_addr (int *) ;
 size_t preload_fetch_size (int *) ;
 int * preload_search_by_type (char*) ;

__attribute__((used)) static void
pci_load_vendor_data(void)
{
 caddr_t data;
 void *ptr;
 size_t sz;

 data = preload_search_by_type("pci_vendor_data");
 if (data != ((void*)0)) {
  ptr = preload_fetch_addr(data);
  sz = preload_fetch_size(data);
  if (ptr != ((void*)0) && sz != 0) {
   pci_vendordata = ptr;
   pci_vendordata_size = sz;

   pci_vendordata[pci_vendordata_size] = '\n';
  }
 }
}
