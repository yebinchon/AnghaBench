
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ tmpbuf; int mtx; } ;


 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int MTX_SPIN ;
 int memcpy (scalar_t__,void*,scalar_t__) ;
 scalar_t__ min (int,scalar_t__) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_initialized (int *) ;
 int mtx_lock_spin (int *) ;
 TYPE_1__ opalcons_buffer ;
 int pmap_bootstrapped ;

__attribute__((used)) static void
uart_opal_real_map_outbuffer(uint64_t *bufferp, uint64_t *lenp)
{

 if (!mtx_initialized(&opalcons_buffer.mtx))
  mtx_init(&opalcons_buffer.mtx, "uart_opal", ((void*)0),
      MTX_SPIN | MTX_QUIET | MTX_NOWITNESS);

 if (!pmap_bootstrapped)
  return;

 mtx_lock_spin(&opalcons_buffer.mtx);

 opalcons_buffer.size = *(uint64_t *)(*lenp) =
     min(sizeof(opalcons_buffer.tmpbuf), *(uint64_t *)(*lenp));
 memcpy(opalcons_buffer.tmpbuf, (void *)(*bufferp),
     *(uint64_t *)(*lenp));
 *bufferp = (uint64_t)opalcons_buffer.tmpbuf;
 *lenp = (uint64_t)&opalcons_buffer.size;
}
