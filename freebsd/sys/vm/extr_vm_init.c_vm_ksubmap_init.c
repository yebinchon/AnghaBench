
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long vm_size_t ;
typedef int vm_paddr_t ;
typedef char* vm_offset_t ;
struct kva_md_info {char* clean_sva; char* clean_eva; char* buffer_sva; char* buffer_eva; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ ARG_MAX ;
 long BKVASIZE ;
 int FALSE ;
 long MAXPHYS ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ PATH_MAX ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ bio_transient_maxcnt ;
 int btoc (scalar_t__) ;
 int buffer_arena ;
 void* exec_map ;
 int exec_map_entries ;
 int exec_map_entry_size ;
 scalar_t__ kern_vfs_bio_buffer_alloc (scalar_t__,long) ;
 int kernel_map ;
 char* kmem_alloc_attr (long,int,int,int,int ) ;
 char* kmem_malloc (long,int) ;
 void* kmem_suballoc (int ,char**,char**,int,int ) ;
 char* kva_alloc (long) ;
 long lmin (int ,int ) ;
 int maxpipekva ;
 int mp_ncpus ;
 scalar_t__ nbuf ;
 int panic (char*) ;
 int physmem ;
 void* pipe_map ;
 int round_page (scalar_t__) ;
 int transient_arena ;
 scalar_t__ vm_map_max (int ) ;
 scalar_t__ vm_map_min (int ) ;
 int vmem_init (int ,char*,char*,long,int,long,int ) ;

void
vm_ksubmap_init(struct kva_md_info *kmi)
{
 vm_offset_t firstaddr;
 caddr_t v;
 vm_size_t size = 0;
 long physmem_est;
 vm_offset_t minaddr;
 vm_offset_t maxaddr;
 firstaddr = 0;
again:
 v = (caddr_t)firstaddr;





 physmem_est = lmin(physmem, btoc(vm_map_max(kernel_map) -
     vm_map_min(kernel_map)));

 v = kern_vfs_bio_buffer_alloc(v, physmem_est);




 if (firstaddr == 0) {
  size = (vm_size_t)v;
   firstaddr = kmem_malloc(size, M_ZERO | M_WAITOK);
  if (firstaddr == 0)
   panic("startup: no room for tables");
  goto again;
 }




 if ((vm_size_t)((char *)v - firstaddr) != size)
  panic("startup: table size inconsistency");




 size = (long)nbuf * BKVASIZE + (long)bio_transient_maxcnt * MAXPHYS;
 kmi->clean_sva = firstaddr = kva_alloc(size);
 kmi->clean_eva = firstaddr + size;







 size = (long)nbuf * BKVASIZE;
 kmi->buffer_sva = firstaddr;
 kmi->buffer_eva = kmi->buffer_sva + size;
 vmem_init(buffer_arena, "buffer arena", kmi->buffer_sva, size,
     PAGE_SIZE, (mp_ncpus > 4) ? BKVASIZE * 8 : 0, 0);
 firstaddr += size;




 if (bio_transient_maxcnt != 0) {
  size = (long)bio_transient_maxcnt * MAXPHYS;
  vmem_init(transient_arena, "transient arena",
      firstaddr, size, PAGE_SIZE, 0, 0);
  firstaddr += size;
 }
 if (firstaddr != kmi->clean_eva)
  panic("Clean map calculation incorrect");
 exec_map_entries = 8 * mp_ncpus;



 exec_map_entry_size = round_page(PATH_MAX + ARG_MAX);
 exec_map = kmem_suballoc(kernel_map, &minaddr, &maxaddr,
     exec_map_entries * exec_map_entry_size + 64 * PAGE_SIZE, FALSE);
 pipe_map = kmem_suballoc(kernel_map, &minaddr, &maxaddr, maxpipekva,
     FALSE);
}
