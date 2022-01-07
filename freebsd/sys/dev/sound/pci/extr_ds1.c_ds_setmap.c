
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {int ctrlbase; } ;
struct TYPE_3__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 scalar_t__ bootverbose ;
 int printf (char*,unsigned long,unsigned long,int,int) ;

__attribute__((used)) static void
ds_setmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc = arg;

 sc->ctrlbase = error? 0 : (u_int32_t)segs->ds_addr;

 if (bootverbose) {
  printf("ds1: setmap (%lx, %lx), nseg=%d, error=%d\n",
         (unsigned long)segs->ds_addr, (unsigned long)segs->ds_len,
         nseg, error);
 }
}
