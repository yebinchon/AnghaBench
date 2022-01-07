
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {char* vendor; int (* load ) (int *,int,void**,void**) ;int * (* match ) (int *,size_t*) ;} ;


 int KASSERT (int,char*) ;
 int MODINFO_TYPE ;
 scalar_t__ NO_ERROR ;
 scalar_t__ NO_MATCH ;
 uintptr_t PAGE_SIZE ;
 int do_cpuid (int ,int *) ;
 int * early_ucode_data ;
 TYPE_1__* loaders ;
 int * map_ucode (uintptr_t,size_t) ;
 int memcpy_early (int *,int *,size_t) ;
 size_t nitems (TYPE_1__*) ;
 int * preload_fetch_addr (scalar_t__) ;
 size_t preload_fetch_size (scalar_t__) ;
 scalar_t__ preload_search_info (scalar_t__,int ) ;
 scalar_t__ preload_search_next_name (scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;
 int * stub1 (int *,size_t*) ;
 int stub2 (int *,int,void**,void**) ;
 int * ucode_data ;
 scalar_t__ ucode_error ;
 TYPE_1__* ucode_loader ;
 void* ucode_nrev ;
 void* ucode_orev ;
 int unmap_ucode (uintptr_t,size_t) ;

size_t
ucode_load_bsp(uintptr_t free)
{
 union {
  uint32_t regs[4];
  char vendor[13];
 } cpuid;
 uint8_t *addr, *fileaddr, *match;
 char *type;
 uint64_t nrev, orev;
 caddr_t file;
 size_t i, len;
 int error;

 KASSERT(free % PAGE_SIZE == 0, ("unaligned boundary %p", (void *)free));

 do_cpuid(0, cpuid.regs);
 cpuid.regs[0] = cpuid.regs[1];
 cpuid.regs[1] = cpuid.regs[3];
 cpuid.vendor[12] = '\0';
 for (i = 0; i < nitems(loaders); i++)
  if (strcmp(cpuid.vendor, loaders[i].vendor) == 0) {
   ucode_loader = &loaders[i];
   break;
  }
 if (ucode_loader == ((void*)0))
  return (0);

 file = 0;
 fileaddr = match = ((void*)0);
 for (;;) {
  file = preload_search_next_name(file);
  if (file == 0)
   break;
  type = (char *)preload_search_info(file, MODINFO_TYPE);
  if (type == ((void*)0) || strcmp(type, "cpu_microcode") != 0)
   continue;

  fileaddr = preload_fetch_addr(file);
  len = preload_fetch_size(file);
  match = ucode_loader->match(fileaddr, &len);
  if (match != ((void*)0)) {
   addr = map_ucode(free, len);

   memcpy_early(addr, match, len);
   match = addr;

   error = ucode_loader->load(match, 0, &nrev, &orev);
   if (error == 0) {
    ucode_data = early_ucode_data = match;
    ucode_nrev = nrev;
    ucode_orev = orev;
    return (len);
   }
   unmap_ucode(free, len);
  }
 }
 if (fileaddr != ((void*)0) && ucode_error == NO_ERROR)
  ucode_error = NO_MATCH;
 return (0);
}
