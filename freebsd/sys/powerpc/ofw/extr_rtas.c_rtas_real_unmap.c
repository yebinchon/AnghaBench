
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cell_t ;


 int MA_OWNED ;
 int memcpy (void*,scalar_t__,size_t) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ rtas_bounce_phys ;
 scalar_t__ rtas_bounce_virt ;
 int rtas_mtx ;

__attribute__((used)) static void
rtas_real_unmap(cell_t physaddr, void *buf, size_t len)
{
 mtx_assert(&rtas_mtx, MA_OWNED);

 if (physaddr == 0)
  return;

 memcpy(buf, rtas_bounce_virt + (physaddr - rtas_bounce_phys), len);
}
