
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_size_t ;
typedef void* vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct mem_region {void* mr_size; void* mr_start; } ;
typedef int phandle_t ;
typedef int lmb_size ;
typedef int cell_t ;
typedef int arr ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getproplen (int,char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
parse_drconf_memory(struct mem_region *ofmem, int *msz,
      struct mem_region *ofavail, int *asz)
{
 phandle_t phandle;
 vm_offset_t base;
 int i, idx, len, lasz, lmsz, res;
 uint32_t flags, lmb_size[2];
 uint32_t *dmem;

 lmsz = *msz;
 lasz = *asz;

 phandle = OF_finddevice("/ibm,dynamic-reconfiguration-memory");
 if (phandle == -1)

  return (0);

 res = OF_getencprop(phandle, "ibm,lmb-size", lmb_size,
     sizeof(lmb_size));
 if (res == -1)
  return (0);
 printf("Logical Memory Block size: %d MB\n", lmb_size[1] >> 20);
 len = OF_getproplen(phandle, "ibm,dynamic-memory");
 if (len > 0) {




  cell_t arr[len/sizeof(cell_t)];

  res = OF_getencprop(phandle, "ibm,dynamic-memory", arr,
      sizeof(arr));
  if (res == -1)
   return (0);


  idx = arr[0];


  dmem = &arr[1];

  for (i = 0; i < idx; i++) {
   base = ((uint64_t)dmem[0] << 32) + dmem[1];
   dmem += 4;
   flags = dmem[1];

   if ((flags & 0x8) && !(flags & 0x80)) {
    ofmem[lmsz].mr_start = base;
    ofmem[lmsz].mr_size = (vm_size_t)lmb_size[1];
    ofavail[lasz].mr_start = base;
    ofavail[lasz].mr_size = (vm_size_t)lmb_size[1];
    lmsz++;
    lasz++;
   }
   dmem += 2;
  }
 }

 *msz = lmsz;
 *asz = lasz;

 return (1);
}
