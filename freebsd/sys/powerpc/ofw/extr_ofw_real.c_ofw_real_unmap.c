
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cell_t ;


 int MA_OWNED ;
 int memcpy (void*,int *,size_t) ;
 int mtx_assert (int *,int ) ;
 int of_bounce_mtx ;
 scalar_t__ of_bounce_phys ;
 int * of_bounce_virt ;

__attribute__((used)) static void
ofw_real_unmap(cell_t physaddr, void *buf, size_t len)
{
 mtx_assert(&of_bounce_mtx, MA_OWNED);

 if (of_bounce_virt == ((void*)0))
  return;

 if (physaddr == 0)
  return;

 memcpy(buf,of_bounce_virt + (physaddr - of_bounce_phys),len);
}
