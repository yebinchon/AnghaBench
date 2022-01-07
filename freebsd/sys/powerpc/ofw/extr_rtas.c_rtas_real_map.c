
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;
typedef scalar_t__ cell_t ;


 int MA_OWNED ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;
 int rtas_bounce_offset ;
 scalar_t__ rtas_bounce_phys ;
 int rtas_bounce_size ;
 scalar_t__ rtas_bounce_virt ;
 int rtas_mtx ;

__attribute__((used)) static cell_t
rtas_real_map(const void *buf, size_t len)
{
 cell_t phys;

 mtx_assert(&rtas_mtx, MA_OWNED);





 rtas_bounce_offset += sizeof(register_t) -
     (rtas_bounce_offset % sizeof(register_t));

 if (rtas_bounce_offset + len > rtas_bounce_size) {
  panic("Oversize RTAS call!");
  return 0;
 }

 if (buf != ((void*)0))
  memcpy(rtas_bounce_virt + rtas_bounce_offset, buf, len);
 else
  return (0);

 phys = rtas_bounce_phys + rtas_bounce_offset;
 rtas_bounce_offset += len;

 return (phys);
}
