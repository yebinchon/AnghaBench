
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t vm_offset_t ;
typedef int register_t ;
typedef int emergency_buffer ;
typedef int cell_t ;


 uintptr_t DMAP_BASE_ADDRESS ;
 int MA_OWNED ;
 int memcpy (char*,void const*,size_t) ;
 int mtx_assert (int *,int ) ;
 int of_bounce_mtx ;
 int of_bounce_offset ;
 int of_bounce_phys ;
 int of_bounce_size ;
 char* of_bounce_virt ;
 int panic (char*) ;
 int pmap_bootstrapped ;

__attribute__((used)) static cell_t
ofw_real_map(const void *buf, size_t len)
{
 static char emergency_buffer[255];
 cell_t phys;

 mtx_assert(&of_bounce_mtx, MA_OWNED);

 if (of_bounce_virt == ((void*)0)) {





  if (!pmap_bootstrapped)
   return (cell_t)((uintptr_t)buf & ~DMAP_BASE_ADDRESS);







  of_bounce_virt = emergency_buffer;
  of_bounce_phys = (vm_offset_t)of_bounce_virt &
      ~DMAP_BASE_ADDRESS;
  of_bounce_size = sizeof(emergency_buffer);
 }





 of_bounce_offset += sizeof(register_t) -
     (of_bounce_offset % sizeof(register_t));

 if (of_bounce_offset + len > of_bounce_size) {
  panic("Oversize Open Firmware call!");
  return 0;
 }

 if (buf != ((void*)0))
  memcpy(of_bounce_virt + of_bounce_offset, buf, len);
 else
  return (0);

 phys = of_bounce_phys + of_bounce_offset;

 of_bounce_offset += len;

 return (phys);
}
