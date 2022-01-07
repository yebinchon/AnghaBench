
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ uint32_t ;
typedef int u_long ;
typedef scalar_t__ caddr_t ;


 scalar_t__ MODINFO_ADDR ;
 scalar_t__ MODINFO_EMPTY ;
 scalar_t__ MODINFO_NAME ;
 scalar_t__ MODINFO_SIZE ;
 int kmem_bootstrap_free (int ,scalar_t__) ;
 int * preload_metadata ;
 int roundup (int,int) ;
 int strcmp (char const*,scalar_t__) ;

void
preload_delete_name(const char *name)
{
    caddr_t addr, curp;
    uint32_t *hdr, sz;
    int next;
    int clearing;

    addr = 0;
    sz = 0;

    if (preload_metadata != ((void*)0)) {

 clearing = 0;
 curp = preload_metadata;
 for (;;) {
     hdr = (uint32_t *)curp;
     if (hdr[0] == MODINFO_NAME || (hdr[0] == 0 && hdr[1] == 0)) {

  if (addr != 0 && sz != 0)
      kmem_bootstrap_free((vm_offset_t)addr, sz);
  addr = 0;
  sz = 0;

  if (hdr[0] == 0)
      break;
  if (!strcmp(name, curp + sizeof(uint32_t) * 2))
      clearing = 1;
  else if (clearing) {
      clearing = 0;
  }
     }
     if (clearing) {
  if (hdr[0] == MODINFO_ADDR)
      addr = *(caddr_t *)(curp + sizeof(uint32_t) * 2);
  else if (hdr[0] == MODINFO_SIZE)
      sz = *(uint32_t *)(curp + sizeof(uint32_t) * 2);
  hdr[0] = MODINFO_EMPTY;
     }


     next = sizeof(uint32_t) * 2 + hdr[1];
     next = roundup(next, sizeof(u_long));
     curp += next;
 }
    }
}
