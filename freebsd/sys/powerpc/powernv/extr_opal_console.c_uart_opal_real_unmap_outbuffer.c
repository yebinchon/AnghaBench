
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int mtx; int size; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;
 TYPE_1__ opalcons_buffer ;
 int pmap_bootstrapped ;

__attribute__((used)) static void
uart_opal_real_unmap_outbuffer(uint64_t *len)
{

 if (!pmap_bootstrapped)
  return;

 mtx_assert(&opalcons_buffer.mtx, MA_OWNED);
 *len = opalcons_buffer.size;
 mtx_unlock_spin(&opalcons_buffer.mtx);
}
